qt_add_library(SecondMod STATIC)

target_link_libraries(SecondMod PRIVATE Qt6::Quick)

qt_add_qml_module(SecondMod
	URI second_mod
	QML_FILES
		MagicText.qml
		MagicAnimation.qml
)
