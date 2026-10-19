qt_add_library(MyQmlModule STATIC)

target_link_libraries(MyQmlModule PRIVATE Qt6::Quick)

list(APPEND MODULE_QML_FILES Main.qml)

qt_add_qml_module(MyQmlModule
	URI hello
	QML_FILES
		${MODULE_QML_FILES}
	RESOURCES
		img/world.png
	DEPENDENCIES
		second_mod
)
