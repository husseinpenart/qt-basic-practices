import QtQuick
// build a costum button
// call the button which made in CButton file
Item {
    // id:rootId
    // /// in this part we actully make thing inside Rectangle be controlled in the way we want like a props
    // property alias buttonText:buttonText.text
    // width: buttoncontainerId.width
    // height:buttoncontainerId.height
    // signal buttonClick
    // Rectangle{
    //     id:buttoncontainerId
    //     width: buttonText.implicitWidth + 20
    //     height: buttonText.implicitHeight + 20
    //     border{
    //         color:'gray'
    //         width: 1

    //     }
    //     Text{
    //         id:buttonText
    //         text:"click on button"
    //         anchors.centerIn: parent
    //     }
    //     MouseArea{
    //         anchors.fill: parent
    //         onClicked: {
    //             rootId.buttonClick() // emit the signal
    //         }
    //     }
    // }
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

    // usage of component method 1

    /*
       Row{
           spacing: 20
           Loader{
               id: firstButton
               sourceComponent: buttonComponent

               onLoaded: {
                   var customButton = firstButton.item // Retrieve the loaded item

                   //Access the loaded component's properties and signals
                   customButton.buttonText = "Button1"
                   customButton.buttonClicked.connect(function(){
                       console.log("Clicked on Button1")
                   })
               }

           }

           Loader{
               id: secondButton
               sourceComponent: buttonComponent

               onLoaded: {
                   var customButton = secondButton.item // Retrieve the loaded item

                   //Access the loaded component's properties and signals
                   customButton.buttonText = "Button2"
                   customButton.buttonClicked.connect(function(){
                       console.log("Clicked on Button2")
                   })
               }

           }
       }


       Component{
           id: buttonComponent
           Item{
               id: rootId
               property  alias buttonText: buttonTextId.text
               width: containerRectId.width
               height: containerRectId.height
               signal buttonClicked


               Rectangle{
                   id: containerRectId
                   width: buttonTextId.implicitWidth + 10
                   height: buttonTextId.implicitHeight + 10
                   color: "red"
                   border{
                       color: "blue"
                       width: 3
                   }

                   Text{
                       id: buttonTextId
                       text: "Button"
                       anchors.centerIn: parent
                   }

                   MouseArea{
                       anchors.fill: parent
                       onClicked: {
                           rootId.buttonClicked()//Emit your signal
                       }
                   }
               }
           }
       }
      */

    // usage of component method 2

    // component MButton: Rectangle{
    //     id: mButtonId
    //     property alias buttonText: buttonTextId.text
    //     signal buttonClicked
    //     width: buttonTextId.implicitWidth + 20
    //     height: buttonTextId.implicitHeight + 20
    //     color: "red"
    //     border {
    //         color: "blue"
    //         width: 3
    //     }

    //     Text {
    //         id: buttonTextId
    //         text: "Button"
    //         anchors.centerIn: parent
    //         onTextChanged: {
    //             console.log("Text changed to " + buttonTextId.text);
    //         }
    //     }

    //     MouseArea {
    //         anchors.fill: parent
    //         onClicked: {
    //             //console.log("Clicked on :"+ buttonTextId.text)
    //             mButtonId.buttonClicked();
    //         }
    //     }
    // }


    // Column {
    //     spacing: 20
    //     MButton {
    //         buttonText: "Button3"
    //         onButtonClicked: {
    //             console.log("Clicked on inlined component button3");
    //         }
    //     }
    //     MButton {
    //         buttonText: "Button4"
    //         onButtonClicked: {
    //             console.log("clicked on inlined component button4");
    //         }
    //     }
    // }
}
