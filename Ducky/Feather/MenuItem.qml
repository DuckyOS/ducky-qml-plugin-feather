import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Label {
    signal clicked()
    font.family: "Lato"
    verticalAlignment: Text.AlignVCenter
    color: "white"
    font.pixelSize: Screen.pixelDensity
}
