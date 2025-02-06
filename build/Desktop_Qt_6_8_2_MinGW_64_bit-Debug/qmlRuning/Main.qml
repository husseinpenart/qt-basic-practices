import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Practicing basic of qt")
    property string mString: "https://www.huabb.ir"
    property int mInt: 45
    property bool isFemale: false
    property double mDouble: 77.5
    property url mUrl: "https://www.huabb.ir"

    property int aNumber: 100
    property var aBool: Boolean (false)
    property var aString:String ("Hello world!") //String works as a type in js ts
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

    property var aFont: Qt.font({family: "Consolas", pointSize: 30, bold: true})
    property date mDate: "2018-07-19"
    Rectangle{
        id:rectangleExampleGreen
        color:"green"
        height: 100 +mInt
        width: 200
        radius: 20
        border.color: "red"
        border.width: 2
        Text{
            id:shape1
            anchors.centerIn: parent
            text:mString
            color: "white"
            font.bold: isFemale ? true : false
        }
    }

    Rectangle{
          id: redRectId
          width: 50
          height: width * 1.5 //Property binding
          color: "red"
      }

      Rectangle{
          id: blueRectId
          color: "blue"
          width: 100
          height: 100
          anchors.bottom: parent.bottom
          MouseArea{
              anchors.fill: parent
              onClicked: {
                  redRectId.width = redRectId.width + 10
              }
          }

      }

      Rectangle{
          id: greenRectId
          color: "green"
          width: 100
          height: 100
          anchors.bottom: parent.bottom
          anchors.left: blueRectId.right
          MouseArea{
              anchors.fill: parent
              onClicked: {
                  //redRectId.height = 100 // Replace the binding with a static value: break the binding
                  //redRectId.height = redRectId.width *  2.5
                  redRectId.height = Qt.binding(function(){
                      return redRectId.width * 2.5
                  })
              }
          }
      }
    Component.onCompleted: {
        //console.log("The value of mString is: " + mString)
        print("The value of mString is: " + mString)
        console.log("The value of mInt is: " + mInt)

        if (isFemale) {
            console.log("You may wear a dress")
        } else {
            console.log("You may wear a suit")
        }
        console.log("The value of mDouble is: " + mDouble)
        console.log("The value of mUrl is: " + mUrl)

        if (mString === mUrl) {
            console.log("They are the same")
        } else {
            console.log("They are NOT the same")
        }

        console.log("-----------------Playing with var datatype---------------")
        console.log("The value of aNumber is: " + aNumber)
        console.log("The value of aBool is: " + aBool)
        console.log("The value of aString is: " + aString)
        console.log("The value of anotherString is: " + anotherString)

        console.log("The components of aRect are x:" + aRect.x + ", y:" + aRect.y + ", width:" + aRect.width + ", height:" + aRect.height)

        console.log("The length of the array is: " + anArray.length)

        /*
                  anArray.forEach(function(value,index){
                      if( index ===5){
                        console.log(value())
                      }else
                      {
                          console.log(value)
                  }})
                  */

        for (var i = 0; i < anArray.length; i++) {
            if (i === 5) {
                console.log(anArray[i]())
            } else {
                console.log(anArray[i])
            }
        }

        console.log("The date is: " + mDate)
    }

}
