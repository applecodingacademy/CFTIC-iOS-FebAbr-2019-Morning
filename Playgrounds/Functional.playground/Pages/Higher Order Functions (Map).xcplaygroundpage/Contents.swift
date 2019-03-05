import Foundation

var cifras = [5,7,3,9,2,5,1,8,4,3,6,7]
var animales = ["León", "Jirafa", "Mono", "Hiena", "Elefante", "Tigre"]

class Animal {
   var nombre:String
   
   init(nombre:String) {
      self.nombre = nombre
   }
}

var clasesAnimales = animales.map { Animal(nombre: $0) }

var resultado:[Int] = []
for cifra in cifras {
   resultado.append(cifra+1)
}
resultado

let resulta = cifras.map { $0 + 1 }
resulta

let divisa = cifras.map { "\($0)€" }
divisa
