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
            id: cardBorderBlackId

            anchors.centerIn:  cardPlayerBorderId
            width: cardPlayerBorderId.width * .9
            height: cardPlayerBorderId.height * .9
            color: "black"
        }

        Rectangle {
            id: cardBorderWhiteId

            anchors.centerIn: cardBorderBlackId
            width: cardBorderBlackId.width - 2
            height: cardBorderBlackId.height - 2
            color: "white"
        }


        Image {
            id: cardImageId

            anchors.centerIn: cardBorderWhiteId
            width: cardBorderWhiteId.width - 2
            height: cardBorderWhiteId.height - 2
            source: "file:///" + applicationDirPath + "/../../" + cardImage
        }
    }
}
