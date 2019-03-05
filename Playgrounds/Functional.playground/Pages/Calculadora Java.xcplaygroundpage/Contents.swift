import Foundation

enum Operacion {
   case suma, resta, mul, div
}

func calculadora(numeros:[Int], operacion: Operacion) -> Int {
   var resultado = 0
   switch operacion {
   case .suma:
      if !numeros.isEmpty {
         for numero in numeros {
            resultado += numero
         }
      }
   case .resta:
      if !numeros.isEmpty {
         for numero in numeros {
            resultado -= numero
         }
      }
   case .mul:
      if !numeros.isEmpty {
         resultado = cifras.first!
         for (indice, numero) in numeros.enumerated() {
            if indice > 0 {
               resultado *= numero
            }
         }
      }
   case .div:
      if !numeros.isEmpty {
         resultado = cifras.first!
         for (indice, numero) in numeros.enumerated() {
            if indice > 0 {
               resultado /= numero
            }
         }
      }
   }
   return resultado
}

let cifras = [5,7,3,9,2,5,1,8]
calculadora(numeros: cifras, operacion: .suma)
calculadora(numeros: cifras, operacion: .mul)

