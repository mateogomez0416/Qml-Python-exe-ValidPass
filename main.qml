import QtQuick 2.12
import QtQuick.Layouts 1.4
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12



ApplicationWindow{

    id:lienzo
    visible: true
    width: 1400
    height: 800

    Material.theme:  Material.Dark
    Material.accent: Material.Blue

    StackView{


        id: viewstack
        initialItem: principal

        anchors.centerIn: parent
       

    }
    Component{

        id: principal
        PaginaPrincipal{}
    }

    Component{

        id:resultado
        PaginaResultados{}
    }

    function load_Page(page){

        switch(page){

        case 'Enviar':
            viewstack.push(resultado);
            break;

        case 'Regresar':
            viewstack.push(principal);
            break;

        }

    }


}
