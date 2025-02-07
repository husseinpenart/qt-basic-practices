import QtQuick
// build a costum button
// call the button which made in CButton file
Item {
    id:rootId
    /// in this part we actully make thing inside Rectangle be controlled in the way we want like a props
    property alias buttonText:buttonText.text
    width: buttoncontainerId.width
    height:buttoncontainerId.height
    signal buttonClick
    Rectangle{
        id:buttoncontainerId
        width: buttonText.implicitWidth + 20
        height: buttonText.implicitHeight + 20
        border{
            color:'gray'
            width: 1

        }
        Text{
            id:buttonText
            text:"click on button"
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.buttonClick() // emit the signal
            }
        }
    }
    // usage exmpale it should use in another file not in same page I put it here as an exmaple
    // Column{
    //     spacing:10
    //     CButton{
    //         id:buttonId
    //         buttonText: "click on button 1"
    //         onButtonClick:  {
    //             console.log("click on button 1")
    //         }

    //     }
    //     CButton{
    //         id:button2Id
    //         buttonText: "click on button 2"
    //         onButtonClick: {
    //             console.log("click on button2")
    //         }
    //     }
    // }
}
