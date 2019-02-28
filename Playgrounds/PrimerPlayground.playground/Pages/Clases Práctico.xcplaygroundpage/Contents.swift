import UIKit

var partida = true
var puntos = 0

class Personaje {
   var vida:Int
   var fuerza:Int
   var muerto = false
   
   init?(vida:Int) {
      if vida < 0 {
         return nil
      }
      self.vida = vida
      self.fuerza = 40
   }
   
   convenience init() {
      self.init(vida: 50, fuerza: 30)
   }

   init(vida:Int, fuerza:Int) {
      self.vida = vida
      self.fuerza = fuerza
   }
   
   func pierdeVida(daño:Int) {
      vida -= daño
      if vida <= 0 {
         haMuerto()
      }
   }
   
   func haMuerto() {
      muerto = true
      print("Me 'morío'")
   }
   
   func atacar(objetivo:Personaje) {
      let fuerzaAtaque = Int.random(in: 1...fuerza)
      objetivo.pierdeVida(daño: fuerzaAtaque)
      if let heroe = objetivo as? Heroe {
         print("Ataque al héroe")
         print("Tengo el poder de \(heroe.poder)")
      } else if let enemigo = objetivo as? Enemigo {
         print("Ataque al enemigo")
         print("Tengo el arma \(enemigo.arma)")
      }
      print("Ataque de \(fuerzaAtaque). Atacado tiene vida \(objetivo.vida) y está \(objetivo.muerto ? "muerto" : "vivo")")
   }
   
   deinit {
      
   }
}

class Heroe:Personaje {
   var poder:String
   
   init(poder:String, vida:Int, fuerza:Int) {
      self.poder = poder
      super.init(vida: vida, fuerza: fuerza)
   }
   
   convenience init() {
      self.init(poder: "Espada", vida: 60, fuerza: 30)
   }
   
   override func haMuerto() {
      partida = false
      super.haMuerto()
   }
}

final class Enemigo:Personaje {
   var arma:String
   
   init(arma:String, vida:Int, fuerza:Int) {
      self.arma = arma
      super.init(vida: vida, fuerza: fuerza)
   }
   
   override func haMuerto() {
      puntos += fuerza
      super.haMuerto()
   }
}

let heroe1 = Heroe(poder: "Magia", vida: 50, fuerza: 30)
let enemigo1 = Enemigo(arma: "Sable", vida: 20, fuerza: 20)
let enemigo2 = Enemigo(arma: "Hacha", vida: 25, fuerza: 15)
heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos: \(puntos)")
heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
enemigo1.atacar(objetivo: heroe1)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos: \(puntos)")
heroe1.atacar(objetivo: enemigo1 as Personaje)
enemigo1.atacar(objetivo: heroe1)
enemigo1.atacar(objetivo: heroe1)
enemigo1.atacar(objetivo: heroe1)
print("Partida \(partida ? "activa" : "finalizada"), Puntos: \(puntos)")

let personaje = Personaje(vida: -10)

class Etiqueta {
   var texto:String
   var color:UIColor
   var fuente:UIFont
   var posicion:CGPoint
   var tamaño:CGFloat
   
   init(texto:String, color:UIColor, fuente:UIFont, posicion:CGPoint, tamaño:CGFloat) {
      self.texto = texto
      self.color = color
      self.fuente = fuente
      self.posicion = posicion
      self.tamaño = tamaño
   }
   
   convenience init(etiquetaRojaCabecera texto:String) {
      self.init(texto: texto, color: .red, fuente: UIFont.systemFont(ofSize: 40), posicion: CGPoint(x: 100, y: 50), tamaño: 40)
   }
}

let etiqueta1 = Etiqueta(etiquetaRojaCabecera: "Welcome")
