import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: windowId

    signal dealCards()

    visible: true
    width: 450
    height: 800
    title: qsTr("Game Station")

    header: ToolBar {
        id: toolbarId

        RowLayout {
            anchors.fill: parent
            Label {
                text: "Love Letters"
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                id: mainMenuBtnId
                text: qsTr("⋮")
                onClicked: mainMenuId.open()
            }
        }

        Menu {
            id: mainMenuId
            x: windowId.width - width
            y: toolbarId.height
            MenuItem { text: "Join Game" }
            //MenuItem { text: "Deal Cards" }
            Action {
                id: copyAction
                text: qsTr("Deal Cards")
                onTriggered: windowId.dealCards()
            }
        }
    }

    Rectangle {
        id: backgroundId
        anchors.top: windowId.top
        height: windowId.height
        width: windowId.width

        color: "#009900"

        PlayerPanel {
            id: playerPanelId

            anchors.top: windowId.top
            height: windowId.height / 10
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

        Rectangle {
            id: handStatusSepID

            anchors.top: myHandCardPanelId.bottom
            height: 1
            width: windowId.width
            color: "#00BB00"
        }
    }

    //Component.onCompleted: {
    onDealCards: {
        playerPanelId.addPlayer("Dionne", "red");
        playerPanelId.addPlayer("McKelle", "blue");
        playerPanelId.addPlayer("Eric", "black");
        playerPanelId.addPlayer("Karla", "white");

        opponentCardPanelId.addCard("Handmaid", "red", "LLHandmaid.jpg");
        opponentCardPanelId.addCard("Handmaid", "black", "LLHandmaid.jpg");

        myCardPanelId.addCard("Handmaid", "transparent", "LLHandmaid.jpg");

        myHandCardPanelId.addCard("Help", "transparent", "LLHelp.jpg");
        myHandCardPanelId.addCard("King", "transparent", "LLKing.jpg");
    }
}
