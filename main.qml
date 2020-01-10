import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: windowId

    visible: true
    width: 640
    height: 480
    title: qsTr("Game Station")
    Rectangle {
        anchors.top: windowId.top
        height: windowId.height
        width: windowId.width

        color: "#009900"

        PlayerPanel {
            id: playerPanelId

            anchors.top: windowId
            height: windowId.height / 5
            width: windowId.width
        }

        Rectangle {
            id: playerOpponentSepID

            anchors.top: playerPanelId.bottom
            height: 1
            width: windowId.width
            color: "#00BB00"
        }

        CardPanel {
            id: opponentCardPanelId

            anchors.top: playerPanelId.bottom
            height: windowId.height / 5
            width: windowId.width
        }

        Rectangle {
            id: opponentGameSepID

            anchors.top: opponentCardPanelId.bottom
            height: 1
            width: windowId.width
            color: "#00BB00"
        }

        Rectangle {
            id: gameTablePanelId

            anchors.top: opponentCardPanelId.bottom
            height: windowId.height / 5
            width: windowId.width
            color: "transparent"
        }

        Rectangle {
            id: gameCardSepID

            anchors.top: gameTablePanelId.bottom
            height: 1
            width: windowId.width
            color: "#00BB00"
        }

        CardPanel {
            id: myCardPanelId

            anchors.top: gameTablePanelId.bottom
            height: windowId.height / 5
            width: windowId.width
        }

        Rectangle {
            id: cardHandSepID

            anchors.top: myCardPanelId.bottom
            height: 1
            width: windowId.width
            color: "#00BB00"
        }

        CardPanel {
            id: myHandCardPanelId

            anchors.top: myCardPanelId.bottom
            height: windowId.height / 5
            width: windowId.width
        }
    }
}
