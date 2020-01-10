import QtQuick 2.9

FocusScope {
    id: cardId

    //anchors.fill: parent
    property string cardName: "Player"
    property string cardColor: "red"
    property string cardImage: ""

    Rectangle {
        id: cardBackgroundId

        width: cardId.width
        height: cardId.height
        color: "transparent"

        Rectangle {
            id: cardBorderId

            anchors.centerIn: cardBackgroundId
            width: cardId.height * 36 / 50
            height: cardId.height
            color: cardColor
        }

        Image {
            id: cardImageId

            anchors.centerIn: cardBorderId
            width: cardBorderId.width * .9
            height: cardBorderId.height * .9
            source: "file:///home/mholyoak/playground/GameStation/CardBack.png"
        }
    }
}
