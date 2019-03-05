import Foundation

enum Operacion {
   case suma, resta, mul, div, sumSquare
}

func calculadora(numeros:[Int], operacion: Operacion) -> Int {
   if numeros.isEmpty {
      return 0
   }
   var resultado:Int
   switch operacion {
   case .suma:
      resultado = numeros.reduce(0, +)
   case .resta:
      resultado = numeros.reduce(0, -)
   case .mul:
      resultado = numeros.reduce(1, *)
   case .div:
      resultado = numeros.reduce(1, /)
   case .sumSquare:
      resultado = numeros.reduce(0) { ($0*2) + ($1*2) }
   }
   return resultado
}

let cifras = [5,7,3,9,2,5,1,8]
calculadora(numeros: cifras, operacion: .suma)
calculadora(numeros: cifras, operacion: .mul)
calculadora(numeros: cifras, operacion: .sumSquare)

let csv = cifras.reduce("", {"\($0),\($1)"}).dropFirst()
csv
