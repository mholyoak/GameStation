import QtQuick 2.9

FocusScope {
    id: cardPanelId

    ListModel {
        id: mainModel
        ListElement { name: "K"; color: "red" }
        ListElement { name: "Q"; color: "red"  }
        ListElement { name: "J"; color: "blue"  }
        ListElement { name: "A"; color: "blue"  }
        ListElement { name: "2"; color: "blue"  }
        ListElement { name: "8"; color: "blue"  }
        ListElement { name: "3"; color: "pink"  }
        ListElement { name: "5"; color: "gray"  }
    }

    Component {
        id: testComponent

        Item {
            id: rectComponent

            width: mainListId.height
            height: mainListId.height
            Card {
                width: rectComponent.width - 10
                height: rectComponent.height - 10
                anchors.centerIn: rectComponent
                cardName: model.name
                cardColor: model.color
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
        model: mainModel

        delegate: testComponent
    }
}
