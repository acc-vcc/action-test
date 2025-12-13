#include <QtTest/QtTest>
#include <log4cpp/Category.hh>
#include <log4cpp/PropertyConfigurator.hh>
#include "parts.cpp"

class TestApp : public QObject {
    Q_OBJECT

private slots:
    void initTestCase() {
        // ログ設定ファイルを読み込む
        try {
            log4cpp::PropertyConfigurator::configure("log4cpp.conf");
        } catch (log4cpp::ConfigureFailure& f) {
            qWarning("Log4cpp configure failed: %s", f.what());
        }
    }

    void testAdd() {
        log4cpp::Category& root = log4cpp::Category::getRoot();
        root.info("Running testAdd...");

        QCOMPARE(add(2, 3), 5);
        root.debug("Checked add(2,3) == 5");

        QCOMPARE(add(-1, 1), 0);
        root.debug("Checked add(-1,1) == 0");
    }

    void cleanupTestCase() {
        log4cpp::Category::shutdown();
    }
};

QTEST_MAIN(TestApp)
#include "test_app.moc"
