import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Game Station")

    Rectangle {
        anchors.top: mainList.bottom
        height: parent.width
        width: parent.width

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
                //readonly property string subList: model.subList

                id: rectComponent
                width: 120
                height: 100
                Player {
                    width: rectComponent.width - 30
                    height: rectComponent.height - 30
                    anchors.centerIn: rectComponent
                    playerName: model.name
                    playerColor: model.color
                }
            }
        }

        ListView {
            id: mainList

            property int mainCurIdx: 0

            height: parent.height / 4
            width: parent.width
            //clip: true
            //focus: true
            orientation: ListView.Horizontal
            model: mainModel

            delegate: testComponent
        }
    }
}
