
import QtQuick 2.4
import Ubuntu.Telephony 0.1
import Ubuntu.Components.ListItems 1.3 as ListItem

import "../"

ListItem.Standard {
    id: speedDialItem
    property int keycode
    property string num

    ContactWatcher {
        id: contactWatcher
        identifier: mainView.getSpeedDial(speedDialItem.keycode)
        addressableFields: ["tel"]
    }
    anchors { left: parent.left; right: parent.right }
    text: num + ": " + (contactWatcher.isUnknown ? "" : (contactWatcher.alias + " ")) + contactWatcher.identifier
    onPressAndHold: mainView.setSpeedDial(speedDialItem.keycode, "")
}
