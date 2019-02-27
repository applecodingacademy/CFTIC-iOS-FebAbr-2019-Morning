import Foundation

let arrayCadenas = ["Hola","Adiós","Hasta Luego","Ola k Ase"]
var cadenas = arrayCadenas
var numeros = [1,4,5,6,5,4,5,4,5]

var numArray:[Int] = []

numeros[1...3]
numeros
numeros[0...2] = [9,8]
numeros

let x = numeros.index(of: 10)
numeros.contains(7)
numArray.first

for num in numeros where num < 8 {
   print(num)
}

for num in numeros.enumerated() {
   print(num.element, num.offset)
}

let arrayOrdenado = arrayCadenas.sorted()
let arrayInvertido = arrayOrdenado.reversed()

for cadena in arrayCadenas.sorted().reversed() {
   print(cadena)
}

let numElements = numeros.dropLast(3).count
arrayCadenas.sorted().reversed().first?.lowercased()

var matriz = [[1,3,4,5],[3,6,8,9,2,4],[4,6,8,9]]
matriz[2][1]
