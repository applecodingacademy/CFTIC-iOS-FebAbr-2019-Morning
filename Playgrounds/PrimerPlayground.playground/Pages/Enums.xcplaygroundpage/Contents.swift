import Foundation

enum Generos:Int {
   case aventuras = 8, acción, comedia, scifi, drama, infantil
   
   init() {
      self = .scifi
   }
}

var genero1 = Generos.aventuras
var genero2:Generos = .acción
var genero3 = Generos()

genero1.rawValue
genero2.rawValue

let genero4 = Generos(rawValue: 10)

if genero1 == .comedia {
   print("Es una comedia")
}

switch genero1 {
case .aventuras:
   print("Es de aventuras")
case .acción:
   print("Es de acción")
case .comedia:
   print("Es de comedia")
case .scifi:
   print("Es de scifi")
case .drama:
   print("Es de drama")
case .infantil:
   print("Es infantil")
}

enum EstadosAnimo:String {
   case 😃, 😆, 🥰, 😎, 🙁
}

var 😎 = "Hola"

let animo1 = EstadosAnimo.🥰
animo1.rawValue

