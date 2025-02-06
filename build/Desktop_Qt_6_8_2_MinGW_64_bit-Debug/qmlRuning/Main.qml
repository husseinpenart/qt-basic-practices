import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Practicing basic of qt")
    property var fonts: Qt.fontFamilies()   // user computer system fonts
    Text {
        id: textQt
        text: Qt.md5("Qt Text") /// hashed text
        color:"red"
        font.bold: true
        font.pointSize: 10

    }


    Rectangle{
        id:pressbutton
        Text{
            text:"action button"
        }
        color:"orange"
        width: 100
        height: 100

        MouseArea{
            anchors.fill: parent
            onClicked: {
                /*
             //Quit the applications
             Qt.quit()

             //Loop through the fonts
             for(var i = 0; i < fonts.length; i++){
                 console.log("[" + i +"]" + fonts[i])
             }

             //Hash a string
             var mText = "hello, world"
             var mTextHash = Qt.md5(mText)
             console.log("The hash of the name is: " + mTextHash)

             //Open url externally
             Qt.openUrlExternally("https://wocalend.site")

             //Open local files with the default program
             Qt.openUrlExternally("https://wocalend.site/images/front/logo.png")
             */
 Qt.openUrlExternally("https://wocalend.site/images/front/logo.png")
                //Capture platform info
                console.log("The current platform is: " + Qt.platform.os)
            }
        }
    }

}
