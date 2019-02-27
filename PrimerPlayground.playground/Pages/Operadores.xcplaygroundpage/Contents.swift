import Foundation

var a = 2
var b = 11
var c = 10.3

a + b
a - b
a * b
b / a
b % a

Double(a) + c

a += 2
b -= 2
a *= 2
a /= 2

a == b
a != b
a > b
a < b
a >= b
a <= b

a > b && b == 5
b == 4 || b < a


let x = a > b

let y = a == b ? "Verdad" : "Falso"

a == b ? "a es igual a b" : a < b ? "a es menor que b" : a > b ? "a es mayor que b" : "No sé nada"

let rango1 = 3 ... 10
let rango2 = 3 ..< 10

let rangoLetras = "a" ... "z"
rangoLetras.contains("g")

let rango3 = ...3
let rango4 = 1...
