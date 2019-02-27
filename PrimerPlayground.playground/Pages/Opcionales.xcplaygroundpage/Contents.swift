import Foundation

var num:Int? //= nil
var cadena:String?

//num = 4

if let numero = num, numero > 0, let cadenaDesempaquetada = cadena {
   numero + 4
   print(cadenaDesempaquetada)
}

4 + (num ?? 0)

num!

guard let numero = num, numero > 0 else {
   fatalError()
}

numero

