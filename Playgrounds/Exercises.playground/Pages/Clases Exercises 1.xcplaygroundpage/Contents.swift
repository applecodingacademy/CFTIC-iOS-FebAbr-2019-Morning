import UIKit

var totalHabitaciones = Array(1...20)
totalHabitaciones.shuffle()
var habitacionAsignada = 0

enum Puerta:Int {
   case abierta, cerrada
   
   init() {
      self = Puerta(rawValue: Int.random(in: 0...1))!
   }
}

enum Objeto:Int {
   case cofre, llave, nada
   
   init() {
      self = Objeto(rawValue: Int.random(in: 0...2))!
   }
}

struct Habitacion {
   var id:Int
   var conexion:[Int]
   var puertas:[Puerta]
   var objetos:[Objeto]
   
   init(id:Int) {
      self.id = id
      var constructorPuertas:[Puerta] = []
      var conexionesPuertas:[Int] = []
      for _ in [0...Int.random(in: 1...4)] {
         constructorPuertas.append(Puerta())
         conexionesPuertas.append(totalHabitaciones[habitacionAsignada])
         habitacionAsignada += 1
      }
      conexion = conexionesPuertas
      puertas = constructorPuertas
      var constructorObjetos:[Objeto] = []
      for _ in [0...Int.random(in: 1...3)] {
         constructorObjetos.append(Objeto())
      }
      objetos = constructorObjetos
   }
}
