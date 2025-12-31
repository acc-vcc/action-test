#include "CsvParser.h"
#include "Logger.h"
#include <QFile>
#include <QTextStream>

bool CsvParser::parseFile(const QString &filePath, CsvStats &stats)
{
    QFile file(filePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        Logger::log(
            Logger::Level::Error,
            QString("Failed to open CSV: %1 (%2)")
                .arg(filePath, file.errorString())
        );
        return false;
    }

    QTextStream in(&file);

    while (!in.atEnd()) {
        QString line = in.readLine().trimmed();
        if (line.isEmpty())
            continue;

        stats.rowCount++;

        auto parts = line.splitRef(',');
        if (!parts.isEmpty()) {
            bool ok = false;
            double v = parts[0].toDouble(&ok);
            if (ok) {
                stats.numericCount++;
                stats.firstColumnSum += v;
            }
        }
    }

    Logger::log(
        Logger::Level::Debug,
        QString("Parsed %1: rows=%2 numeric=%3 sum=%4")
            .arg(filePath)
            .arg(stats.rowCount)
            .arg(stats.numericCount)
            .arg(stats.firstColumnSum)
    );

    return true;
}
