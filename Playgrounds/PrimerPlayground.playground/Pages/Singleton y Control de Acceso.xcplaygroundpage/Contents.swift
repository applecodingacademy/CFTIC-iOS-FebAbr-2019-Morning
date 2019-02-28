import Foundation

class Enemigo {
   static var nivel:Int = 1
   static let vidaInicial = 20
   
   static func nuevoEnemigo() -> Enemigo {
      let vida = Int.random(in: (vidaInicial * nivel)...(vidaInicial * (nivel + 1)))
      return Enemigo(vida: vida)
   }
   
   var arma:String
   var vida:Int
   var fuerza:Int = 20
   
   private init(vida:Int) {
      self.vida = vida
      let valorArma = Int.random(in: 1...4)
      switch valorArma {
      case 1:
         arma = "Espada"
         self.vida += 5
         self.fuerza += 5
      case 2:
         arma = "Lanza"
         self.vida += 3
         self.fuerza += 10
      case 3:
         arma = "Sable"
         self.fuerza += 15
      default: arma = "Ninguna"
      }
   }
}

let enemigo1 = Enemigo.nuevoEnemigo()
enemigo1.arma
enemigo1.fuerza
enemigo1.vida

Enemigo.nivel = 2

let enemigo2 = Enemigo.nuevoEnemigo()
enemigo2.arma
enemigo2.fuerza
enemigo2.vida

let enemigo3 = Enemigo.nuevoEnemigo()

class PointsManager {
   static let shared = PointsManager()
   
   var puntos:Int = 0
   var experiencia:Int = 0
   
   private init() { }
}

do {
   let puntos = PointsManager.shared
   puntos.puntos += 10
   puntos.experiencia += 20
   print(puntos.puntos, puntos.experiencia)
}

let puntos = PointsManager.shared
print(puntos.puntos, puntos.experiencia)



