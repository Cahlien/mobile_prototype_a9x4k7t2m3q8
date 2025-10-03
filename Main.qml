import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string projectName: "mobile_prototype_a9x4k7t2m3q8"

    Rectangle {
        anchors.fill: parent
        color: "#3c3c3c"
    }

    Text {
        anchors.centerIn: parent
        text: qsTr(projectName + ' on ' + Qt.platform.os)
        color: '#c3c3c3'
    }
}
