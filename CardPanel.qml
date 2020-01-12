import QtQuick 2.9
import "."

FocusScope {
    id: cardPanelId

    property ListModel cards

    Component {
        id: testComponent

        Item {
            id: rectComponent

            width: mainListId.height * Style.cardWidthAspectRatio
            height: mainListId.height
            Card {
                width: rectComponent.width - 10
                height: rectComponent.height - 10
                anchors.centerIn: rectComponent
                cardName: model.name
                cardColor: model.color
                cardImage: model.cardImage
            }
        }
    }

    ListView {
        id: mainListId

        property int mainCurIdx: 0

        height: cardPanelId.height
        width: cardPanelId.width
        clip: true
        //focus: true
        orientation: ListView.Horizontal
        model: cards

        delegate: testComponent
    }
}
