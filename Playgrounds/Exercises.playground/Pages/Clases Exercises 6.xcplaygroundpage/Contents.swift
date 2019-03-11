import Foundation

struct Juego {
   enum Genero {
      case FPS, MMORPG, RTS, RPG, Platform, Shooter
   }
   var genero:Genero
   var nombre:String
}

struct Puntuaciones {
   var juego:Juego
   var score:Double
   var level:Int
}

struct Persona {
   var nombre:String
   var nickname:String
   var juegos:[Puntuaciones]
}

var juego1 = Juego(genero: .FPS, nombre: "Fortnite")
var juego2 = Juego(genero: .RTS, nombre: "Sim City")
var juego3 = Juego(genero: .MMORPG, nombre: "DOTA 2")
var juego4 = Juego(genero: .MMORPG, nombre: "LOL")
var juego5 = Juego(genero: .Platform, nombre: "Super Mario Odyssey")
var juegos = [juego1, juego2, juego3, juego4, juego5]

func nombre() -> String {
   let longitud = Int.random(in: 5...10)
   let letras = "abcdefghijklmnopqrstuvwxyz"
   return String((0...longitud-1).map {
      _ in letras.randomElement()! }).capitalized
}

var personas:[Persona] = []
for _ in 1...20 {
   var puntuacion1 = Puntuaciones(juego: juego1, score: Double.random(in: 5000...50000), level: Int.random(in: 1...20))
   var puntuacion2 = Puntuaciones(juego: juego2, score: Double.random(in: 5000...50000), level: Int.random(in: 1...20))
   var puntuacion3 = Puntuaciones(juego: juego3, score: Double.random(in: 5000...50000), level: Int.random(in: 1...20))
   var puntuacion4 = Puntuaciones(juego: juego4, score: Double.random(in: 5000...50000), level: Int.random(in: 1...20))
   var puntuacion5 = Puntuaciones(juego: juego5, score: Double.random(in: 5000...50000), level: Int.random(in: 1...20))
   var persona = Persona(nombre: nombre(), nickname: nombre(), juegos: [puntuacion1, puntuacion2, puntuacion3, puntuacion4, puntuacion5])
   personas.append(persona)
}

let listado = personas.flatMap { pun in pun.juegos.map { (score: $0.score, juego:$0.juego.nombre, nick:pun.nickname ) } }

var listadoOrden:[(score:Double, juego:String, nick:String)] = []
juegos.sorted { $0.nombre < $1.nombre }.forEach { juego in
   var puntuaciones = listado.filter { $0.juego == juego.nombre }
   puntuaciones.sort { $0.score > $1.score }
   listadoOrden.append(contentsOf: puntuaciones)
}
listadoOrden

let orden = listado.sorted { ($1.juego, $0.score) > ($0.juego, $1.score) }
orden

var listadoSuma:[(score:Double, juego:String)] = []
juegos.sorted { $0.nombre < $1.nombre }.forEach { juego in
   var score = listado.filter { $0.juego == juego.nombre }.map { $0.score }.reduce (0,+)
   listadoSuma.append((score, juego.nombre))
}

listadoSuma

