import Foundation

let cadena = "Hola Mundo"

let trozo = cadena[cadena.startIndex...cadena.index(cadena.startIndex, offsetBy: 6)]
let cadena2 = String(trozo)

var año = 2000
let abrirá = 10
let hola = "😃"
let 😇 = 9

let array = [8,5,4,9,1,3,14,1,4]
array[4]
var vacio:[String] = []
vacio.reserveCapacity(1000)
vacio.capacity

var array2 = array
array2.count

//for valor in array where valor < 5 {
//   print(valor)
//}
array.capacity
array[1...3]

let a = array[2]
let b = array[2...4]
b
array.contains(5)
let aa = array.index(of:5)

for v in array.sorted().reversed() {
   print(v)
}

var dic:[String:String] = [:]
var dicS = ["OMG": "Oh my God", "WTF": "What the F***"]
let dicValor = dicS["OMG"]
dicS["ILY"] = "I Love You"
dicS.updateValue("Hello", forKey: "HL")
dicS.updateValue("Oh my Godness", forKey: "OMG")

for valor in dicS {
   print(valor)
}

var arrayDic:[[String:String]] = [[:]]
var arrayBi:[[Int]] = [[]]

var conjunto:Set = ["Hola","Adiós","Ola k ase","Bye","Hi"]
for v in conjunto {
   print(v)
}
conjunto.insert("Hola")



