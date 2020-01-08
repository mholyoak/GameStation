import QtQuick 2.0

Item {
    id: playerId

    property string playerName: "Player"
    property string playerColor: "red"

    Rectangle {
        id: headId

        anchors.top: playerId.top
        x: (playerId.width / 2) - (playerId.width / 4)
        width: playerId.width / 2
        height: width

        color: playerColor
        radius: width*0.5
    }

    ProgressiveCircle {
        id: bodyId
        anchors.top: headId.bottom
        size: playerId.width
        colorCircle: playerColor
        colorBackground: "transparent"
        showBackground: true
        isPie: true
        arcBegin: -90
        arcEnd: 90
    }

    Text {
        y: bodyId.y + (bodyId.height / 2)
        anchors.left: bodyId.left
        anchors.right: bodyId.right
        font.pointSize: 100
        minimumPointSize: 10
        fontSizeMode: Text.Fit
        color: playerColor
        text: playerName
    }
}
