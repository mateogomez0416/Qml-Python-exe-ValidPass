from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject,pyqtSlot
from PyQt5.QtCore import QUrl

import sys,re,resource

class Validador(QObject):
    def __init__(self):
        QObject.__init__(self)

    password =""
    user =""

    @pyqtSlot(str,str)
    def capture_data(self,clave,usuario):
        self.password= clave
        self.user= usuario

    @pyqtSlot(result=str)
    def get_usuario(self):

        return self.user

    @pyqtSlot(result=str)
    def get_password(self):

        return self.password

    @pyqtSlot(result=str)
    def uppercase_letter(self):
        if re.match('[A-Z]',self.password[0]):
            return "#21bd09"
        else:
            return "#bd0909"

    @pyqtSlot(result=str)
    def three_number(self):
        if re.match('[(0-9)]{3}',self.password[1:4]):
            return "#21bd09"
        else:
            return "#bd0909"

    @pyqtSlot(result=str)
    def three_lowercase_letter(self):
        if re.match('[a-z]{3}',self.password[4:7]):
            return "#21bd09"
        else:
            return "#bd0909"

    @pyqtSlot(result=str)
    def special_characters(self):

        if self.password[7:10] == "   " :
            return "#bd0909"
        else:

            if re.match('[\W]{3}',self.password[7:10]):
                return "#21bd09"
            else:
                return "#bd0909"

    @pyqtSlot(result=str)
    def complete_expresion(self):
        if re.match('[A-Z][0-9]{3}[a-z]{3}[\W]{3}',self.password):
            return "#21bd09"
        else:
            return "#bd0909"

    @pyqtSlot(result=str)
    def alert(self):
        sms="no valida"

        if self.complete_expresion() == "#21bd09":
            sms="valida"
            return sms
        else:
            return sms



validacion = Validador()
sys.argv += ['--style', 'material']
app = QGuiApplication(sys.argv)
engine = QQmlApplicationEngine()
engine.rootContext().setContextProperty('validaciones',validacion)
engine.load(QUrl('qrc:/main.qml'))
engine.quit.connect(app.quit)

if not engine.rootObjects():
    sys.exit(-1)

sys.exit(app.exec_())
