import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: windowId

    visible: true
    width: 640
    height: 480
    title: qsTr("Game Station")

    Rectangle {
        id: backgroundId
        anchors.top: windowId.top
        height: windowId.height
        width: windowId.width

        color: "#009900"

        PlayerPanel {
            id: playerPanelId

            anchors.top: windowId.top
            height: windowId.height / 5
            width: windowId.width

            Component.onCompleted: {
                playerPanelId.addPlayer("Dionne", "red");
                playerPanelId.addPlayer("McKelle", "blue");
                playerPanelId.addPlayer("Eric", "black");
                playerPanelId.addPlayer("Karla", "white");
            }
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

        GameTable {
            id: gameTablePanelId

            anchors.top: opponentCardPanelId.bottom
            height: windowId.height / 5
            width: windowId.width
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
