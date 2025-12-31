#include "FileEnumerator.h"
#include <QDir>
#include <QFileInfoList>

QVector<QString> FileEnumerator::enumerateCsvFiles(const QString &directoryPath)
{
    QVector<QString> result;

    QDir dir(directoryPath);
    if (!dir.exists())
        return result;

    QFileInfoList list = dir.entryInfoList(
                QStringList() << "*.csv",
                QDir::Files | QDir::NoSymLinks);

    result.reserve(list.size());
    for (const QFileInfo &info : list)
        result.append(info.absoluteFilePath());

    return result;
}
