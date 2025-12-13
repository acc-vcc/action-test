#include <log4cpp/Category.hh>
#include <log4cpp/PropertyConfigurator.hh>

int main() {
    try {
        // 設定ファイルを読み込む
        log4cpp::PropertyConfigurator::configure("log4cpp.conf");
    } catch (log4cpp::ConfigureFailure& f) {
        std::cerr << "Configure problem: " << f.what() << std::endl;
        return 1;
    }

    // ルートカテゴリを取得
    log4cpp::Category& root = log4cpp::Category::getRoot();

    root.info("Hello log4cpp with config file!");
    root.debug("Debug message");
    root.error("Error message");

    log4cpp::Category::shutdown();
    return 0;
}
