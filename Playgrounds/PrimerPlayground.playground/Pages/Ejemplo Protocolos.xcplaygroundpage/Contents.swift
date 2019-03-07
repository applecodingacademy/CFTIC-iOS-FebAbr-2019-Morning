import UIKit
import PlaygroundSupport

protocol Coloreable {
   func colorear(color:UIColor)
}

class Boton:UIButton, Coloreable {
   func colorear(color: UIColor) {
      setTitleColor(color, for: .normal)
   }
}

class Etiqueta:UILabel, Coloreable {
   func colorear(color: UIColor) {
      textColor = color
   }
}

let boton1 = Boton(type: .system)
boton1.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 200, height: 50))
boton1.setTitle("Púlsame", for: .normal)
boton1.setTitle("Me pulsaron", for: .highlighted)
boton1.colorear(color: .white)

let etiqueta1 = Etiqueta(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: 200, height: 50)))
etiqueta1.text = "Soy una etiqueta"
etiqueta1.colorear(color: .white)

PlaygroundPage.current.liveView = boton1

let conjunto:[Coloreable] = [etiqueta1, boton1]


