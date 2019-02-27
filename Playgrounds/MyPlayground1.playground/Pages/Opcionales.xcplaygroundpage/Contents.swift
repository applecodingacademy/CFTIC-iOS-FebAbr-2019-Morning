import Foundation

var numero:Int?

//numero = 2

if let n = numero {
   print(n)
} else {
   print("Es nulo")
}

//guard let n = numero else {
//   fatalError()
//}

let nn = numero ?? 0


