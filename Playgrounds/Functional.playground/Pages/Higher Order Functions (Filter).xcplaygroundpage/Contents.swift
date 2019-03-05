import Foundation

var cifras = [5,7,3,9,2,5,1,8,4,3,6,7]

var resultado:[Int] = []
for cifra in cifras where cifra <= 5 {
   resultado.append(cifra)
}
resultado

let resul = cifras.filter { $0 <= 5 }
resul

var animales = ["León", "Jirafa", "Mono", "Hiena", "Elefante", "Tigre"]

class Animal {
   var nombre:String
   
   init(nombre:String) {
      self.nombre = nombre
   }
}

var clasesAnimales = animales.map { Animal(nombre: $0) }.filter { $0.nombre.count == 4 }

var animales4 = clasesAnimales.filter { $0.nombre.count == 4 }
animales4
