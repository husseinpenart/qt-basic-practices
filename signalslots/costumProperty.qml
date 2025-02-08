import QtQuick 2.15

Item {
//     // Rectangle{
//     //        id: rectId
//     //        width: 150
//     //        height: 150
//     //        color: "red"

//     //        MouseArea{
//     //            anchors.fill: parent

//     //            hoverEnabled: true  //these signal works if hover is active onEntered onExited

//     //            //clicked is the signal
//     //            //onClicked is the handler
//     //            // onClicked: {
//     //            //     console.log("Clicked on the rectangle")
//     //            // }

//     //            // onDoubleClicked: {
//     //            //     console.log("Double ckicked on the rectangle")
//     //            // }

//     //            // onEntered: {
//     //            //     console.log("You are in!")
//     //            // }

//     //            // onExited: {
//     //            //     console.log("You are out!")
//     //            // }

//     //            onWheel: function(wheel){
//     //                console.log("Wheel: " + wheel.x)
//     //            }

//     //            onReleased: mouse => {
//     //                console.log("Released at x: " + mouse.x + ",y: " + mouse.y)
//     //            }

//     //            onPressAndHold: mouse => {
//     //                console.log("Was held: "+ mouse.wasHeld)
//     //            }

//     //            onPositionChanged: mouse => {
//     //                console.log("Position changed, x: " + mouse.x + ",y: "+ mouse.y)
//     //            }
//     //        }
//     //    }

//     Rectangle{
//         id: rectId
//         width: 300
//         height: width + 50 // Property binding
//         color: "dodgerblue"

//         //Custom property
//         property string descritption: "A rectangle to play with"

//         //Property change handlers
//         onWidthChanged: {
//             console.log("Width changed to :" + rectId.width)
//         }

//         onHeightChanged: {
//             console.log("Height changed to :" + rectId.height)
//         }

//         onColorChanged: {}

//         onVisibleChanged: {}

//         onDescritptionChanged: {
//             console.log("Description changed to: " + rectId.descritption)
//         }

//         MouseArea{
//             anchors.fill: parent
//             onClicked: {
//                 rectId.width += 20
//                 rectId.descritption = "New description"
//             }
//         }
//     }
}
