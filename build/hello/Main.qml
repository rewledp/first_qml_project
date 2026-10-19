import QtQuick
import QtQuick.Controls

import second_mod

ApplicationWindow {
    id: root
    width: 640
    height: 400
    visible: true
    title: "hi"

    MagicText {
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenterOffset: 50
    }
    MagicAnimation {}

    property bool isRed: true

    Rectangle {
        width: root.width / 2
        height: root.height
        x: -100
        color: root.isRed ? "red" : "blue"
        z: -1
    }

    header: MenuBar {
        Menu {
            title: "evil"

            Action {
                text: "Open"
                onTriggered: console.log("Opened")
            }

            MenuSeparator {}

            Action {
                text: "Exit"
                onTriggered: Qt.quit()
            }
        }
    }

    Button {
        text: "lol im cool"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onClicked: root.isRed = !root.isRed
    }
}
