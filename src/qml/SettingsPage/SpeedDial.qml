
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem

import "../"

Page {
    id: speedDialPage
    objectName: "speedDialPage"
    title: i18n.tr("Speed dial")
    flickable: speedDialFlick

    header: PageHeader {
        id: speedDialPageHeader
        title: speedDialPage.title
        flickable: speedDialFlick
    }

    Flickable {
        id: speedDialFlick
        anchors.fill: parent
        contentWidth: parent.width
        contentHeight: contentItem.childrenRect.height
        boundsBehavior: (contentHeight > speedDialPage.height) ?
            Flickable.DragAndOversheetBounds : Flickable.StopAtBounds

        Column {
            anchors { left: parent.left; right: parent.right }

            Loader {
                id: loader
                anchors { left: parent.left; right: parent.right }
            }

            ListItem.Standard {
                anchors { left: parent.left; right: parent.right }
                text: (mainView.account.voicemailNumber ? ( "1: Voicemail " + mainView.account.voicemailNumber ) : "")
                enabled: false
            }

            SpeedDialItem { keycode: Qt.Key_2; num: "2" }
            SpeedDialItem { keycode: Qt.Key_3; num: "3" }
            SpeedDialItem { keycode: Qt.Key_4; num: "4" }
            SpeedDialItem { keycode: Qt.Key_5; num: "5" }
            SpeedDialItem { keycode: Qt.Key_6; num: "6" }
            SpeedDialItem { keycode: Qt.Key_7; num: "7" }
            SpeedDialItem { keycode: Qt.Key_8; num: "8" }
            SpeedDialItem { keycode: Qt.Key_9; num: "9" }
            SpeedDialItem { keycode: Qt.Key_0; num: "0" }
        } // end Column
    }
}
