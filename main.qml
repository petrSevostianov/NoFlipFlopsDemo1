import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Pane{
    Material.theme: themeSwitch.checked?  Material.Dark : Material.Light
    Material.accent: Material.Orange
    padding: 20

    function back(){

        return true;
    }





    Column {
        anchors.fill:parent
        spacing: 0

        Image{
            width: parent.width
            height: width
            source: "icon.png"
        }


        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            Label{
                anchors.verticalCenter: parent.verticalCenter
                text: "Light"
            }
            Switch{
                id: themeSwitch
                anchors.verticalCenter: parent.verticalCenter
                checked: true
            }
            Label{
                anchors.verticalCenter: parent.verticalCenter
                text: "Dark"
            }
        }

        Canvas{
            id: canvas
            width: 200
            height: 200
            onPaint: {

                var ctx = canvas.getContext('2d')
                ctx.fillStyle = "#b40000"

                ctx.beginPath();
                ctx.moveTo(75,40);
                ctx.bezierCurveTo(75,37,70,25,50,25);
                ctx.bezierCurveTo(20,25,20,62.5,20,62.5);
                ctx.bezierCurveTo(20,80,40,102,75,120);
                ctx.bezierCurveTo(110,102,130,80,130,62.5);
                ctx.bezierCurveTo(130,62.5,130,25,100,25);
                ctx.bezierCurveTo(85,25,75,37,75,40);
                ctx.closePath();

                ctx.fill()
                console.log("onPaint")
            }

            MouseArea{

                id: mouseArea
                anchors.fill: parent
                hoverEnabled :true
                onPositionChanged : {
                    //console.log(mouseArea.mouseX,mouseArea.mouseY)
                    var context = parent.getContext("2d")
                    context.strokeStyle = "red"
                    context.beginPath()
                    context.lineTo(mouseArea.mouseX,mouseArea.mouseY)
                    context.stroke()
                }
                onClicked: {
                    console.log("onClicked")
                }

            }
        }

        TextField{
            topPadding: 20
            leftPadding: 20
            rightPadding: 20
            width: parent.width
            text: temperatureSlider.value
            selectByMouse: true
        }

        Slider{
            id: temperatureSlider
            padding: 0
            width: parent.width
            from: 50
            to: 200
            stepSize: 5

            snapMode :"SnapAlways"
        }


        CheckBox {
            id: checkBox
            text: "Check Box"
            anchors.horizontalCenter: parent.horizontalCenter
        }


        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Do"
            onClicked: {
                console.log("Hello")

            }
        }

    }

}
