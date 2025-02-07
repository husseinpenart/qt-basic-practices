import QtQuick

Window {
    id:rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Practicing basic of qt")

    Item{
        id:containerItemId
        x:50
        y:50
        width: 400
        height: 200
        Rectangle{
            anchors.fill: parent
            color:'beige'
            radius:10
            ///group property
            border{
                color:"black"
                width:2

            }
        }
        Rectangle{
           x:0
           y:10
           width: 50
           height: 50
           color:'red'
           MouseArea{
               anchors.fill: parent
               onClicked: {

               }
           }

        }
        Rectangle{
           x:60
           y:10
           width: 50
           height: 50
           color:'green'
           MouseArea{
               anchors.fill: parent
               onClicked: {

               }
           }

        }
        Rectangle{
           x:120
           y:10
           width: 50
           height: 50
           color:'blue'
           MouseArea{
               anchors.fill: parent
               onClicked: {

               }
           }

        }
    }
}
