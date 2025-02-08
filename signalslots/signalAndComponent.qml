import QtQuick 2.15

Item {
    Rectangle{
        id:idattafched
        width: 300
        height: 300
        color:"yellow"
        // setUp the singal
        signal greet(string message)
        onGreet:message =>{
                    console.log("Hello " ,message )
                }
       MouseArea{
           anchors.fill: parent
           onClicked: {
               idattafched.greet("Learner")
           }
       }
    }


    Component.onCompleted: {
        // loading ui data /
        console.log("components starting ..............")
    }
    Component.onDestruction: {
        // saving data  from ui to data store /
        console.error("components dying ..............")
    }
}
