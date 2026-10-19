import QtQuick

Text {
    id: myText
    text: toggle ? "Hello worldle!" : "Goodbye world..."
    focus: true
    onFocusChanged: focus = true
    property bool toggle: true
    Keys.onReturnPressed: event => {
        myText.toggle = !myText.toggle;
        event.accepted = true;
    }
}
