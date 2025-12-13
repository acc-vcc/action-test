#include <QCoreApplication>
#include <QElapsedTimer>
#include <log4cpp/Category.hh>
#include <log4cpp/PropertyConfigurator.hh>
#include "parts.cpp"   // add(), times() を定義していると仮定

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);

    // ログ設定ファイルを読み込む
    try {
        log4cpp::PropertyConfigurator::configure("log4cpp.conf");
    } catch (log4cpp::ConfigureFailure& f) {
        qWarning("Log4cpp configure failed: %s", f.what());
    }

    log4cpp::Category& root = log4cpp::Category::getRoot();
    root.info("Application started");

    QElapsedTimer timer;
    timer.start();

    int a = 2, b = 3;
    int sum = add(a, b);
    root.info("add(%d,%d) = %d", a, b, sum);

    int mul = times(a, b);
    root.info("times(%d,%d) = %d", a, b, mul);

    qint64 elapsed = timer.elapsed();
    root.info("Elapsed time: %lld ms", elapsed);

    root.info("Application finished");
    log4cpp::Category::shutdown();

    return 0;
}
