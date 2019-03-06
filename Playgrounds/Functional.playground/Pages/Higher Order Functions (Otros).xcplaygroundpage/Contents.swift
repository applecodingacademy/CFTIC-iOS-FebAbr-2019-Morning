import Foundation

let cifras = [5,7,3,9,nil,2,5,1,nil,8]
let newCifras = cifras.compactMap { $0 }
newCifras

let numeros = ["1", "2", "three", "//4//", "5"]
var newNums = numeros.compactMap { Int($0) }
newNums

let sort1 = newCifras.sorted { $0 > $1 }
sort1

var animales = ["León", "Jirafa", "Mono", "Hiena", "Elefante", "Tigre"]

class Animal {
   var nombre:String
   
   init(nombre:String) {
      self.nombre = nombre
   }
}

var clasesAnimales = animales.map { Animal(nombre: $0) }.sorted { $0.nombre < $1.nombre }

clasesAnimales
let newSortAnimales = clasesAnimales.sorted { $0.nombre > $1.nombre }
newSortAnimales

let contiene = animales.contains { $0.first == "J" }
contiene

let contieneTodos = animales.allSatisfy { $0.count >= 4 }
contieneTodos

var numerosTest = [1,4,6,8,3,5,8,7,2,4,7,6,5,8,2,4,6,5]
let index = numerosTest.partition { $0 <= 5 }
index
numerosTest

let jirafa = animales.first { $0 == "Jirafa" }
jirafa
let jirafaIndex = animales.firstIndex { $0 == "Jirafa" }
jirafaIndex

let ultimoE = animales.last { $0.last == "e" }
ultimoE
let ultimoEIndex = animales.lastIndex { $0.last == "e" }
ultimoEIndex

numerosTest
numerosTest.removeAll { $0 <= 5 }
numerosTest

let matriz = [[1,4,6,7,6], [1,2,3,4], [2,3,4,5], [4,5,5,5]]
let array = matriz.flatMap { $0 }
array

numerosTest
let noDup = Array(Set(numerosTest))
noDup
