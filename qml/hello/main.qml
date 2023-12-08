import QtQuick
import QtQuick.Layouts

Window {
    id: root
    visible: true
    width: 200
    height: 200
    ColumnLayout
    {
        anchors.fill: parent
        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "Hello, world!"
        }
        FramedImage {
            Layout.alignment: Qt.AlignHCenter

        }

    }
}
