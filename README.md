# Qml-Python-exe-ValidPass
For deploy app

1)  in command  pyrcc5 -o resource.py recursos.qrc

2) in validador.py add  
 from PyQt5.QtCore import QUrl 
 import resource  
 engine.load(QUrl('qrc:/main.qml')) modify the url for qrc format 
 
 3) generate the .exe with the commad 
 pyinstaller validador.py --windowed --onefile --hidden-import PyQt5.sip --hidden-import PyQt5.QtQuick
  
  
in the dist folder is the executable.
