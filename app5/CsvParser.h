#ifndef CSVPARSER_H
#define CSVPARSER_H

#include <QString>

struct CsvStats {
    int rowCount = 0;
    int numericCount = 0;
    double firstColumnSum = 0.0;
};

class CsvParser
{
public:
    static bool parseFile(const QString &filePath, CsvStats &stats);
};

#endif // CSVPARSER_H
