#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    auto appDirPath = QGuiApplication::applicationDirPath();
    if (appDirPath.contains("C:/"))
    {
        appDirPath = appDirPath.mid(3);
    }

    engine.rootContext()->setContextProperty("applicationDirPath", appDirPath);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
