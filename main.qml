import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: firstWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    StackView {
        id: stackView
    }

    Rectangle {
        id: buttonContainer
        x: 50
        y: 20
        width: 200
        height: 80
        color: "magenta"
        radius: 15
        border.color: "gold"
        border.width: 5

        Text {
            id: buttonText
            text: qsTr("Show Table")
            font.bold: true
            font.family: "Verdana"
            anchors.centerIn: parent
        }

        MouseArea {
            id: buttonMouseArea
            anchors.fill: parent

            onClicked: {
                firstWindow.close()
                stackView.push(secondPage)
                buttonContainer.raise()
                // You can adjust the distance it moves upward by changing the value below
                buttonContainer.y -= 50
            }

            onEntered: {
                buttonContainer.color = "green"
            }

            onExited: {
                buttonContainer.color = "lightblue"
            }
        }

        Component {
            id: secondPage
            SecondPage {}
        }
    }
}
