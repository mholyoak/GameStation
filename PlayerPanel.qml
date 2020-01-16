import QtQuick 2.9

FocusScope {
    id: playerPanelId

    signal addPlayer(string playerName, string playerColor)

    onAddPlayer: {
        console.log("Name: " + playerName + " color: " + playerColor);
        var newValue = {"name": playerName, "color": playerColor};
        mainModel.append(newValue);
    }

    ListModel {
        id: mainModel
    }

   // Component.onCompleted: {
   //     mainModel.get(0).append({name: "Dynamic"; color:});
    //}

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

        height: playerPanelId.height
        width: playerPanelId.width
        clip: true
        //focus: true
        orientation: ListView.Horizontal
        model: mainModel

        delegate: testComponent
    }
}
