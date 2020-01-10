import QtQuick 2.9

FocusScope {
    id: cardPanelId

    ListModel {
        id: mainModel
        ListElement { name: "King"; color: "red" }
        ListElement { name: "McKelle"; color: "blue"  }
        ListElement { name: "Eric"; color: "black"  }
        ListElement { name: "Karla"; color: "white"  }
        ListElement { name: "Fred"; color: "green"  }
        ListElement { name: "Sue"; color: "purple"  }
        ListElement { name: "Mark"; color: "pink"  }
        ListElement { name: "John"; color: "gray"  }
    }

    Component {
        id: testComponent

        Item {
            id: rectComponent

            width: mainListId.height
            height: mainListId.height
            Player {
                width: rectComponent.width - 10
                height: rectComponent.height - 10
                anchors.centerIn: rectComponent
                playerName: model.name
                playerColor: model.color
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
