import QtQuick

Window {
    width: 940
    height: 480
    visible: true
    title: qsTr("Practicing basic of qt")


    Notifier{
        id: notifierId
        rectColor: "yellowgreen"
        /*
        onNotify: count => {
           console.log("Received: " + count)
        }
        */
        target: recieverId
    }


    Receiver{
        id: recieverId
        rectColor: "dodgerblue"
        anchors.right: parent.right

    }

    //Make the connection from notifer to receiver
    /*
    Component.onCompleted: {
        notifierId.notify.connect(recieverId.receiveInfo)
    }
    */

    // Rectangle{
    //     id: rectId
    //     width: 300
    //     height: 300
    //     color: "dodgerblue"

    //     //Set up the signal
    //     signal greet(string messsage)
    //     signal forward_greeting(string message)


    //     //The final handler
    //     function respond_your_way(message) {
    //         console.log(" response: " + message);
    //     }

    //     MouseArea{
    //         anchors.fill: parent
    //         onClicked: {
    //             //Fire the greet signal
    //             rectId.greet("The sky is blue")
    //         }
    //     }


    //     Component.onCompleted: {
    //         //Connect signal to signal
    //         rectId.greet.connect(rectId.forward_greeting)

    //         //Connect to the final handler
    //         rectId.forward_greeting.connect(rectId.respond_your_way)
    //     }
    // }
}
