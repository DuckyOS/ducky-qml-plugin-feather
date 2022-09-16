import QtQuick 2.15
import QtQuick.Controls 2.15

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
        anchors.leftMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 15 
        font.pointSize: 18
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
        anchors.leftMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 15   
        font.pointSize: 8
        font.family: "Lato"
        font.weight: Font.Light
        horizontalAlignment: Text.AlignRight
    }
}