import QtQuick 2.15

Item {
    Rectangle{
        id: rectId
        width: 200
        height: 200
        color: "dodgerblue"

        MouseArea{
            id: mouseAreaId
            anchors.fill: parent
        }
    }


    Connections{
        target: mouseAreaId // The source of the signal refrence to id which we want to connect
        function onClicked(){
            console.log("Clicked on the mouse area")
        }

        function onDoubleClicked(mouse){
            console.log("Double clicked at: " + mouse.x)
        }
    }
}
