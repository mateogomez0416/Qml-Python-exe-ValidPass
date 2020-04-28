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
                        Rectangle{width: parent.width/4; height: parent.height; color: validaciones.uppercase_letter()

                            Text {

                                id: condiciones1
                                color: "white"
                                font.underline: false
                                anchors.centerIn: parent
                                text: "1.) 1era letra en mayuscula"
                            }

                        }
                        Rectangle{width: parent.width/4; height: parent.height; color: validaciones.three_number()


                            Text {

                                id: condiciones2
                                color: "white"
                                anchors.centerIn: parent
                                text: "2.) 3 Numeros"
                            }
                        }
                        Rectangle{width:parent.width/4;height:parent.height;color:validaciones.three_lowercase_letter()


                            Text {

                                id: condiciones3
                                color: "white"
                                anchors.centerIn: parent
                                text: "3.) 3  minusculas"
                            }
                        }
                        Rectangle{width: parent.width/4; height: parent.height; color: validaciones.special_characters()

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

                        Rectangle{

                            height: 100
                            width: parent.width
                            color: validaciones.complete_expresion()

                            Text {
                                id: textresultado
                                anchors.centerIn: parent
                                font.pixelSize: 30
                                text: validaciones.get_usuario() + " Contraseña : " + validaciones.get_password() +" "+ validaciones.alert()

                            }


                        }


                        Button {

                            id: button2
                            width: parent.width
                            text: "Atras"
                            highlighted: true
                            Material.elevation: 6
                            Material.background: "#0AD654"
                            onClicked: {

                                load_Page(button2.text)

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
