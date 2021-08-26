import QtQuick 2.15
import QtQuick.Controls 2.15

Column {
    padding: 20
    spacing: 0

    Image{
        width: 50
        height: width
        //source: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/PNG_transparency_demonstration_1.png/411px-PNG_transparency_demonstration_1.png"
        //source: "image:///NoFlipFlopsDemo1/icon.png"
        source: "source:///icon.png"
    }




    CheckBox {
        id: checkBox
        text: "Check Box"
        anchors.horizontalCenter: parent.horizontalCenter
    }
    CheckBox {
        id: checkBox2
        text: "Check Box"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button{
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Do"
    }

}
