import QtQuick

Rectangle {
    width: 100
    height: 100
    border.width: 2
    border.color: "black"
    Image {
        id: img
        source: Qt.resolvedUrl("../../resources/img/world.png")
        anchors.fill: parent
        sourceSize.width: parent.width
        sourceSize.height: parent.height
    }
}