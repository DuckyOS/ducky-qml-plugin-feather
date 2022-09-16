import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Button {
    background: Rectangle {
        color: "black"
        radius: height/4
    }
    contentItem: Label {
        text: parent.text
        font.family: "Lato"
        font.pixelSize: 16 * Screen.pixelDensity
        verticalAlignment: Text.AlignVCenter
        color: "white"
    }
}
