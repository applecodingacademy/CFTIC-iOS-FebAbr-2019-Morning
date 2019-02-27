import Foundation

var dicc:[String:String] = [:]
var dicc2 = [1:"Hola", 2:"Adiós", 3:"Hasta luego", 4:"Ola k ase"]

dicc["Hola"] = "Hello"
let valor = dicc2[6, default: "Nada"]

dicc2.updateValue("Saludos", forKey: 4)
dicc2

dicc2.keys

let valores = [String](dicc2.values)

for clave in dicc2.keys.sorted().reversed() {
   print(dicc2[clave]!)
}

for valor in dicc2 {
   valor
}
