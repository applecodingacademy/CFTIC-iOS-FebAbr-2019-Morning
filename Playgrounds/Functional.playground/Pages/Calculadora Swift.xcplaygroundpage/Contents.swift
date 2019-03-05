import Foundation

enum Operacion {
   case suma, resta, mul, div
}

func calculadora(numeros:[Int], operacion: Operacion) -> Int {
   guard var resultado = numeros.first else {
      return 0
   }
   switch operacion {
   case .suma:
      for numero in numeros.dropFirst() {
         resultado += numero
      }
   case .resta:
      for numero in numeros.dropFirst() {
         resultado -= numero
      }
   case .mul:
      for numero in numeros.dropFirst() {
         resultado *= numero
      }
   case .div:
      for numero in numeros.dropFirst() {
         resultado /= numero
      }
   }
   return resultado
}

let cifras = [5,7,3,9,2,5,1,8]
calculadora(numeros: cifras, operacion: .suma)
calculadora(numeros: cifras, operacion: .mul)

