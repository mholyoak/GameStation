import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: windowId

    visible: true
    width: 640
    height: 480
    title: qsTr("Game Station")

    Rectangle {
        anchors.top: windowId.top
        height: windowId.height
        width: windowId.width

        color: "#009900"

        ListModel {
            id: mainModel
            ListElement { name: "Dionne"; color: "red" }
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

            height: windowId.height / 5
            width: windowId.width
            clip: true
            //focus: true
            orientation: ListView.Horizontal
            model: mainModel

            delegate: testComponent
        }
    }
}
