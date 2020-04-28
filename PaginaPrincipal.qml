import QtQuick 2.12
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12



Page {

    Material.theme:  Material.Dark
    Material.accent: Material.Blue


    Pane {

        id:panel
        width: 1300
        height: 700
        anchors.centerIn: parent
        Material.background:  Material.Grey
        Material.elevation: 6

        Column{

            width: parent.width
            height: parent.height
            anchors.fill: parent


            Rectangle{
                width: parent.width
                height: 60
                color: "#B9BEBA"
                y:parent.y
                Material.elevation: 6
                border.color: "#C7CAC7"
                border.width: 1

                Text {
                    id: textCabecera
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    font.family: "Verdana"
                    text: "Validador de Contraseña en Python "
                }
            }


            Rectangle{
                id:fondo
                y:parent.y+100
                width: parent.width
                height: parent.height-120
                color: "#E4EEE6"
                radius: 10

                Column{
                    width: parent.width
                    height: parent.height
                    spacing: 5


                    Rectangle{
                        id:criterio
                        width: parent.width
                        height: 50
                        color: fondo.color

                        Text {

                            id: textCriterio
                            anchors.centerIn: parent
                            font.pixelSize: 20
                            font.bold: true
                            text: "Criterios de la Contraseña"

                        }

                    }


                    Rectangle{
                        id:descri
                        width: parent.width
                        height: 50
                        color: fondo.color
                        Text {

                            id: textDescripcion
                            anchors.centerIn: parent
                            font.pixelSize: 15
                            text: "En el siguiente orden introduzca la contraseña de 10 caracteres"

                        }

                    }



                    Row{
                        id: fila
                        width: parent.width
                        height: 50
                        spacing: 0
                        y:10
                        Rectangle{width: parent.width/4; height: parent.height; color: "#333333"

                            MouseArea{
                                anchors.fill: parent
                                hoverEnabled: true
                                onEntered: {
                                    condiciones1.font.underline=true;
                                    parent.color="black"
                                }
                                onExited: {
                                    parent.color="#333333"
                                    condiciones1.font.underline=false;}

                            }
                            Text {

                                id: condiciones1
                                color: "white"
                                font.underline: false
                                anchors.centerIn: parent
                                text: "1.) 1era letra en mayuscula"
                            }

                        }
                        Rectangle{width: parent.width/4; height: parent.height; color: "#333333"

                            MouseArea{
                                anchors.fill: parent
                                hoverEnabled: true
                                onEntered: {
                                    condiciones2.font.underline=true;
                                    parent.color="black"
                                }
                                onExited: {
                                    parent.color="#333333"
                                    condiciones2.font.underline=false;}

                            }
                            Text {

                                id: condiciones2
                                color: "white"
                                anchors.centerIn: parent
                                text: "2.) 3 Numeros"
                            }
                        }
                        Rectangle{width: parent.width/4; height: parent.height; color: "#333333"

                            MouseArea{
                                anchors.fill: parent
                                hoverEnabled: true
                                onEntered: {
                                    condiciones3.font.underline=true;
                                    parent.color="black"
                                }
                                onExited: {
                                    parent.color="#333333"
                                    condiciones3.font.underline=false;}

                            }
                            Text {

                                id: condiciones3
                                color: "white"
                                anchors.centerIn: parent
                                text: "3.) 3  minusculas"
                            }
                        }
                        Rectangle{width: parent.width/4; height: parent.height; color: "#333333"
                            MouseArea{
                                anchors.fill: parent
                                hoverEnabled: true
                                onEntered: {
                                    condiciones4.font.underline=true;
                                    parent.color="black"
                                }
                                onExited: {
                                    parent.color="#333333"
                                    condiciones4.font.underline=false;}

                            }
                            Text {

                                id: condiciones4
                                color: "white"
                                anchors.centerIn: parent
                                text: "4.) 3 Caracteres especiales   "
                            }
                        }

                    }


                    Column{
                        topPadding: 10
                        width: parent.width
                        height: 300
                        spacing: 2
                        bottomPadding: 10

                        Label {

                            id:labelusuario
                            color: "black"
                            height:50
                            text: "Nombre de Usuario"
                        }



                        TextField {

                            id: textnombre
                            width: parent.width
                            placeholderText: "Nombre de usuario"
                            font.pixelSize: 28
                            placeholderTextColor:  "#ccc";
                            color: "black"
                            background: Rectangle {
                                            id:tf1
                                            implicitWidth: parent.width
                                            implicitHeight: parent.height
                                            color: textnombre.enabled ? "transparent" : "#353637"
                                            border.color: textnombre.enabled ? "#21be2b" : "transparent"
                                        }


                        }

                        Label {

                            id:labelcontrasena
                            color: "black"
                            height:50
                            text: "Password"
                        }

                        TextField {

                            id: textcontrasena
                            width: parent.width
                            placeholderText: "Password"
                            font.pixelSize: 28
                            placeholderTextColor:  "#ccc";
                            color: "black"
                            background: Rectangle {
                                            id:tf2
                                            implicitWidth: parent.width
                                            implicitHeight: parent.height
                                            color:   textcontrasena.enabled ? "transparent" : "#353637"
                                            border.color: textcontrasena.enabled ? "#21be2b" : "transparent"
                                        }

                        }




                        Button {

                            id: button
                            width: parent.width
                            text: "Enviar"
                            highlighted: true
                            Material.elevation: 6
                            Material.background: "#0AD654"
                            onClicked: {


                                if ( (textcontrasena.text !== "") && (textnombre.text !== "") ){

                                    validaciones.capture_data(textcontrasena.text,textnombre.text)

                                    load_Page(button.text)
                                }
                            }
                        }


                    }



                }

            }

            Rectangle{

                width: parent.width
                Material.elevation: 6
                height: 60
                color: "#B9BEBA"
                y:380
                border.color: "#C7CAC7"
                border.width: 1


            }

        }




    }



}
