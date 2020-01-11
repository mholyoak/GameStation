import QtQuick 2.9
import "."

FocusScope {
    id: cardId

    //anchors.fill: parent
    property string cardName: "Player"
    property string cardColor: "transparent"
    property string cardImage: ""

    Rectangle {
        id: cardBackgroundId

        width: cardId.width
        height: cardId.height
        color: "transparent"

        Rectangle {
            id: cardPlayerBorderId

            anchors.centerIn: cardBackgroundId
            width: cardId.height * Style.cardWidthAspectRatio
            height: cardId.height
            color: cardColor
        }

        Rectangle {
            id: cardBorderId

            anchors.centerIn:  cardPlayerBorderId
            width: cardPlayerBorderId.width * .9
            height: cardPlayerBorderId.height * .9
            color: "black"
        }

        Image {
            id: cardImageId

            anchors.centerIn: cardBorderId
            width: cardBorderId.width - 2
            height: cardBorderId.height - 2
            source: "file:///" + applicationDirPath + "/../../CardBack.png"
        }
    }
}
