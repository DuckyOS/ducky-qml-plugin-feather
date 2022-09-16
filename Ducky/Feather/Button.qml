import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    background: Rectangle {
        color: "black"
        radius: height/4
    }
    contentItem: Label {
        text: parent.text
        font.family: "Lato"
        verticalAlignment: Text.AlignVCenter
        color: "white"
    }
}
