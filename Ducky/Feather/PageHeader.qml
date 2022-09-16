import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Item {
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: titleText.height + descriptionText.height * 3/2
    property string title: "Page"
    property string description: ""
    Text {
        id: titleText
        text: title
        anchors.top: parent.top
        anchors.topMargin: height / 2
        anchors.left: parent.left
        anchors.leftMargin: 15*Screen.pixelDensity
        anchors.right: parent.right
        anchors.rightMargin: 15 *Screen.pixelDensity
        font.pixelSize: 26*Screen.pixelDensity
        font.family: "Lato"
        font.weight: Font.Light
        horizontalAlignment: Text.AlignRight
    }
    Text {
        id: descriptionText
        text: description
        anchors.top: titleText.bottom
        anchors.topMargin: height / 2
        anchors.left: parent.left
        anchors.leftMargin: 15*Screen.pixelDensity
        anchors.right: parent.right
        anchors.rightMargin: 15 *Screen.pixelDensity  
        font.pixelSize: 10*Screen.pixelDensity
        font.family: "Lato"
        font.weight: Font.Light
        horizontalAlignment: Text.AlignRight
    }
}