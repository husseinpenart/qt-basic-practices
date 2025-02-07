import QtQuick

Window {
    id:rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Practicing basic of qt")

    property string name: "Hussein Asadi"
    onNameChanged: {
        console.log("this is my Name: "  ,  name)
    }

   onTitleChanged: {
        console.log("new Title: "  ,  title)
   }
    Rectangle{
        id:pressbutton
        anchors.centerIn:parent
        color:"greenyellow"
        width: 100
        height: 100

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rootId.name = "Sara Mohammadi"
                rootId.title = "this custome property handler"
            }
        }

        Component.onCompleted: {
            console.log("Before page initial - name" , name)
        }
    }
}
