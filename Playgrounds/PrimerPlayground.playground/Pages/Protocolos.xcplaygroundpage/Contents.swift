import Foundation

protocol MensajeExterno {
   var mensaje:String { get set }
   func mostrarMensaje()
}

struct Pantalla:MensajeExterno {
   var mensaje: String
   
   func mostrarMensaje() {
      print(mensaje)
   }
   
   var etiqueta1:String
   var valor:Int
}

var animales = ["León", "Jirafa", "Mono", "Hiena", "Elefante", "Tigre", "Pantera"]

class Animal:CustomStringConvertible {
   var description: String {
      return nombre
   }
   var nombre:String
   
   init(nombre:String) {
      self.nombre = nombre
   }
}

var clasesAnimales = animales.map { Animal(nombre: $0) }.sorted { $0.nombre < $1.nombre }

clasesAnimales
print(clasesAnimales[0])

class Jugador:Equatable {
   static func == (lhs: Jugador, rhs: Jugador) -> Bool {
      return lhs.puntos == rhs.puntos
   }
   
   var puntos:Int = 0
   
   init(puntos:Int) {
      self.puntos = puntos
   }
}

let jugador1 = Jugador(puntos: 50)
let jugador2 = Jugador(puntos: 80)

jugador1 == jugador2

protocol MiProtocolo {
   var miVariable:Int { get }
   func miFuncion()
}

protocol MiOtroProtocolo:class {
   var miOtraVariable:String {get set}
   func miOtraFuncion(unParametro:Int)
}

protocol MiProtocoloHijo:MiProtocolo {
   var miVariableHija:Double { get }
   func miFuncionHija()
}

class MiClase:MiProtocolo, MiOtroProtocolo {
   var miOtraVariable: String = ""
   
   func miOtraFuncion(unParametro: Int) {
      
   }
   
   var miVariable: Int = 0
   
   func miFuncion() {
      
   }
}

struct MiStruct:MiProtocoloHijo {
   var miVariableHija: Double
   
   func miFuncionHija() {
      
   }
   
   var miVariable: Int
   
   func miFuncion() {
      
   }
   
   
}
