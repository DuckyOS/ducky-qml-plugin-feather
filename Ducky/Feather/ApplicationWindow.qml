import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15

import org.nemomobile.configuration 1.0

import Ducky.Feather 1.0

Window {
    visible: true
    color: "white"

    property Item initialPage: null
    readonly property PageStack pageStack: _pageStack

    Component.onCompleted: {
        _pageStack.push(initialPage)
    }

    ConfigurationValue {
        id: wallpaperSource
        key: "/home/ducky/homeScreen/wallpaper"
        defaultValue: "/usr/share/lipstick-ducky-home-qt5/qml/images/wallpaper.jpg"
    }

    Image {
        id: wallpaper
        anchors.fill: parent
        source: wallpaperSource.value
        fillMode: Image.PreserveAspectCrop

        Rectangle {
            id: wallpaperShade
            color: "white"
            anchors.fill: wallpaper
            opacity: 0.4
        }
    }

    FastBlur {
        anchors.fill: wallpaper
        source: wallpaper
        radius: 24
    }

    PageStack {
        id: _pageStack
	    anchors.fill: parent
    }
}
