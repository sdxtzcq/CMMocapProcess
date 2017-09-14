import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0

Item {
    id: root
    width: 580
    height: 640

    ColumnLayout {
        y: 12
        anchors.rightMargin: 2
        anchors.leftMargin: 2
        anchors.topMargin: 2
        anchors.bottomMargin: 2
        anchors.fill: parent
        anchors.margins: 12
        spacing: 8
        Rectangle {
            id: rectanglePart1
            height: 263
            color: "#646464"

            Layout.fillWidth: true
            Layout.fillHeight: true
            ColumnLayout{
                anchors.fill:parent
                RowLayout {
                    id: subjectLayout
                    // Layout.fillWidth: true
                    Label {
                        id: subject
                        text: qsTr("Subject")
                    }

                    Item{
                        Layout.fillWidth: true
                    }

                    ComboBox {
                        id: comboBox_human
                        Layout.maximumWidth: 125
                        Layout.fillWidth: false
                        Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                    }
                }

                Label {
                    id: manualLabel
                    y: 30
                    color: "#0b47c2"
                    text: qsTr("Manual Labeling")
                }

                Button {
                    id: btnPart1
                    y: 57
                    height: 3
                    Layout.maximumHeight: 3
                    Layout.fillWidth: true
                }

                ListView {
                    id: jointList
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    contentHeight: 100
                    delegate: Item {
                        x: 5
                        width: 80
                        height: 40
                        Row {
                            id: row1
                            spacing: 10
                            Rectangle {
                                width: 40
                                height: 40
                                color: colorCode
                            }

                            Text {
                                text: name
                                anchors.verticalCenter: parent.verticalCenter
                                font.bold: true
                            }
                        }
                    }
                    model: ListModel {
                        ListElement {
                            name: "Grey"
                            colorCode: "grey"
                        }

                        ListElement {
                            name: "Red"
                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                    }
                }

                CheckBox {
                    id: checkBox
                    x: 0
                    text: qsTr("Auto advance selection")
                }

            }

        }

        Rectangle {
            id: rectanglePart2
            height: 220
            color: "#ffffff"
            Layout.fillWidth: true
            Label {
                id: label2
                x: 0
                width: 78
                height: 11
                color: "#0b47c2"
                text: qsTr("Label Quality")
                anchors.top: parent.top
                anchors.topMargin: 5
            }

            Button {
                id: btnPart2
                y: 22
                width: parent.width
                height: 3

            }

            RowLayout {
                id: rowLayout
                y: 45
                width: parent.width
                height: 50
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                spacing: 5
                Layout.fillWidth: true
                Rectangle {
                    id: rectangle
                    width: 70
                    color: "#ff0000"
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: 70

                    Label {
                        id: label4
                        x: 36
                        y: 18
                        text: qsTr("Unused")
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                    }

                    Label {
                        id: label3
                        y: 17
                        width: 30
                        height: 13
                        text: qsTr("0")
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }
                }

                Rectangle {
                    id: rectangle1
                    width: 70
                    color: "#ffff00"
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: 70

                    Label {
                        id: label5
                        x: 32
                        y: 19
                        text: qsTr("Total Gaps")
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                    }

                    Label {
                        id: label6
                        y: 19
                        text: qsTr("10")
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }
                }

                Rectangle {
                    id: rectangle2
                    width: 70
                    color: "#55ff00"
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: 70

                    Label {
                        id: label7
                        x: 30
                        y: 19
                        text: qsTr("Labeled")
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                    }

                    Label {
                        id: label8
                        y: 19
                        text: qsTr("100%")
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                    }
                }
            }

            Label {
                id: label9
                y: 106
                text: qsTr("Trajectories sorted by Percentage Labeled")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Flow {
                id: jointListFlow
                y: 124
                height: 76
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                Layout.fillWidth: true
                Rectangle {
                    id: rectangle3
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle4
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle5
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle6
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle7
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle8
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle9
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle10
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle11
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle12
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle13
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle14
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle15
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle16
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle17
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle18
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle19
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle20
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle21
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle22
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }

                Rectangle {
                    id: rectangle23
                    width: 30
                    height: 30
                    color: "#00ff00"
                    radius: 20
                    Layout.preferredHeight: 30
                    Layout.preferredWidth: 30
                }
            }
        }

        Rectangle {
            id: rectanglePart3
            y: 480
            height: 125
            color: "#ffffff"
            Layout.fillHeight: false
            Layout.fillWidth: true

            Label {
                id: label10
                y: 5
                color: "#0b47c2"
                text: qsTr("Joint Quality")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Button {
                id: btnPart3
                y: 22
                height: 3
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                Layout.fillWidth: true
                Layout.preferredHeight: 2
                Layout.preferredWidth: 360
            }

            ColumnLayout {
                y: 25
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 0

                Label {
                    id: label11
                    text: qsTr("Percentage Labelled:")
                }

                Label {
                    id: label13
                    text: qsTr("Number of Gaps:")
                }

                Label {
                    id: label15
                    text: qsTr("Total Gaps Frames:")
                }

                Label {
                    id: label17
                    text: qsTr("Maximum Gap Frames:")
                }

                Label {
                    id: label19
                    text: qsTr("Trajectory Length:")
                }
            }

            ColumnLayout {
                x: 243
                y: 25
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
                Layout.fillWidth: true

                Label {
                    id: label12
                    text: qsTr("92%")
                }

                Label {
                    id: label14
                    text: qsTr("4")
                    Layout.preferredHeight: 13
                    Layout.preferredWidth: 30
                }

                RowLayout {

                    Label {
                        id: label16
                        text: qsTr("1")
                    }

                    Label {
                        id: label23
                        text: qsTr("Frames")
                    }
                }

                RowLayout {

                    Label {
                        id: label18
                        text: qsTr("32")
                    }

                    Label {
                        id: label22
                        text: qsTr("Frames")
                    }
                }

                RowLayout {

                    Label {
                        id: label20
                        text: qsTr("566")
                    }

                    Label {
                        id: label21
                        text: qsTr("Frames")
                    }
                }
            }

        }

        //Item { Layout.fillHeight: true }
    }
}
