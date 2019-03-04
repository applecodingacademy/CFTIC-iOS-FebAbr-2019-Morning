import Foundation

enum Reproduccion {
   case oviparos, viviparos
}

enum Alimentacion {
   case herbivoro, carnivoro, omnivoro
}

class Animal {
   var nombre:String
   var reproduccion:Reproduccion
   var alimentacion:Alimentacion
   
   init(nombre:String, reproduccion:Reproduccion, alimentacion:Alimentacion) {
      self.nombre = nombre
      self.reproduccion = reproduccion
      self.alimentacion = alimentacion
   }
}

enum TipoMamifero {
   case salvaje, domestico
}

class Mamiferos:Animal {
   var especie:String
   var tipo:TipoMamifero
   
   init(nombre:String, especie:String, alimentacion:Alimentacion, tipo:TipoMamifero) {
      self.especie = especie
      self.tipo = tipo
      super.init(nombre: nombre, reproduccion: .viviparos, alimentacion: alimentacion)
   }
}

let elefante = Mamiferos(nombre: "Elefante", especie: "Paquidermo", alimentacion: .herbivoro, tipo: .salvaje)

enum TipoPez {
   case AguaDulce, AguaSalada
}

class Peces:Animal {
   var tipo:TipoPez
   var familia:String
   
   init(nombre:String, familia:String, tipo:TipoPez) {
      self.tipo = tipo
      self.familia = familia
      super.init(nombre: nombre, reproduccion: .oviparos, alimentacion: .omnivoro)
   }
}



