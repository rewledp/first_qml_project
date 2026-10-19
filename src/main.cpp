#include <iostream>

#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);
  QQmlApplicationEngine engine;

  engine.loadFromModule("hello", "Main");
  // engine.load(QUrl("qrc:/qt/qml/hello/Main.qml"));

  if (engine.rootObjects().empty()) {
    std::cout << "Bad\n";
    return EXIT_FAILURE;
  }

  return QGuiApplication::exec();
}
