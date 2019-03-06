import Foundation

struct Area {
   var ancho:Double
   var alto:Double
   var centro:(Double,Double) {
      get {
         return (ancho/2, alto/2)
      }
      set {
         ancho = newValue.0 * 2
         alto = newValue.1 * 2
      }
   }
}

var area1 = Area(ancho: 100, alto: 40)
area1.centro = (15,14)
area1.centro
area1.alto
area1.ancho

var valorRango = 20 {
   didSet {
      if valorRango < 0 || valorRango > 100 {
         valorRango = oldValue
      }
   }
   willSet {
      if newValue == 0 {
         print("0 patetero")
      }
   }
}

valorRango = 60
valorRango = 120
valorRango = 0

class GuerreraElfa {
   var fuerza = 80
   var destreza = 120
   var ataque:Int {
      get { return fuerza + destreza }
      set {
         fuerza = Int(Float(newValue) * 0.4)
         destreza = newValue - fuerza
      }
   }
   var vida = 100 {
      willSet {
         if newValue <= 0 {
            muerte()
         }
      }
      didSet {
         if estado == .muerto {
            vida = 0
         }
      }
   }
   enum Estado {
      case vivo, muerto
   }
   var estado:Estado = .vivo
   
   func muerte() {
      print("Se ha muerto")
      estado = .muerto
   }
}

let tauriel = GuerreraElfa()
tauriel.ataque
tauriel.ataque = 240
tauriel.fuerza
tauriel.destreza

tauriel.vida = 50

tauriel.estado
tauriel.vida = -10
tauriel.estado
tauriel.vida

struct Persona {
   var edad = 16
   
   lazy var fiboEdad:Int = {
      return fibonacci(of: self.edad)
   }()
   
   func fibonacci(of num:Int) -> Int {
      if num < 2 {
         return num
      } else {
         return fibonacci(of: num - 1) + fibonacci(of: num - 2)
      }
   }
}

var personacci = Persona()
personacci.fiboEdad

