import QtQuick 2.9

FocusScope {
    id: playerId

    //anchors.fill: parent
    property string playerName: "Player"
    property string playerColor: "red"

    Rectangle {
        id: headId

        anchors.top: playerId.top
        anchors.horizontalCenter: playerId.horizontalCenter
        width: playerId.width / 3
        height: playerId.width / 3

        color: playerColor
        radius: width*0.5
    }

    Rectangle {
        id: bodyId

        anchors.top: headId.bottom
        anchors.horizontalCenter: playerId.horizontalCenter
        width: headId.width * 2
        height: headId.width
        clip: true
        color: "transparent"

        Rectangle {
            id: bodyCircleId

            anchors.top: bodyId.top
            width: bodyId.width
            height: bodyId.width
            color: playerColor
            radius: width*0.5
        }
    }

    Text {
        anchors.left: playerId.left
        anchors.right: playerId.right
        anchors.bottom: playerId.bottom
        height: playerId.width / 3
        font.pointSize: 100
        minimumPointSize: 10
        fontSizeMode: Text.Fit
        color: playerColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom

        text: playerName
    }
}
