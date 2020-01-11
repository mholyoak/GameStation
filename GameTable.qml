import QtQuick 2.9
import "."

FocusScope {
    id: gameTableId

    property string cardName: "Player"

    Rectangle {
        id: cardBackgroundId

        width: gameTableId.width
        height: gameTableId.height
        color: "transparent"

        Rectangle {
            id: drawDiscardPilesId

            anchors.centerIn: cardBackgroundId
            width: 3 * cardBackgroundId.height * Style.cardWidthAspectRatio
            height: cardBackgroundId.height
            color: "transparent"

            Card {
                id: drawPileCardOneId

                anchors.left: drawDiscardPilesId.left
                width: cardBackgroundId.height * Style.cardWidthAspectRatio
                height: cardBackgroundId.height
            }

            Card {
                id: drawPileCardTwoId

                x: drawPileCardOneId.x + 2
                width: cardBackgroundId.height * Style.cardWidthAspectRatio
                height: cardBackgroundId.height
            }

            Card {
                id: drawPileCardThreeId

                x: drawPileCardOneId.x + 4
                width: cardBackgroundId.height * Style.cardWidthAspectRatio
                height: cardBackgroundId.height
            }

            Card {
                id: discardPileCardOneId

                x: discardPileCardThreeId.x - 4
                width: cardBackgroundId.height * Style.cardWidthAspectRatio
                height: cardBackgroundId.height
            }

            Card {
                id: discardPileCardTwoId

                x: discardPileCardThreeId.x - 2
                width: cardBackgroundId.height * Style.cardWidthAspectRatio
                height: cardBackgroundId.height
            }

            Card {
                id: discardPileCardThreeId

                anchors.right: drawDiscardPilesId.right
                width: cardBackgroundId.height * Style.cardWidthAspectRatio
                height: cardBackgroundId.height
            }
        }
    }
}
