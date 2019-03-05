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
      resultado = hacerOperacion(cifras: numeros,
                                 calculo: { (a:Int, b:Int) -> Int in
                                    return a + b
      })
   case .resta:
      resultado = hacerOperacion(cifras: numeros,
                                 calculo: { (a:Int, b:Int) -> Int in
                                    return a - b
      })
   case .mul:
      resultado = hacerOperacion(cifras: numeros,
                                 calculo: { (a:Int, b:Int) -> Int in
                                    return a * b
      })
   case .div:
      resultado = hacerOperacion(cifras: numeros,
                                 calculo: { (a:Int, b:Int) -> Int in
                                    return a / b
      })
   case .sumSquare:
      resultado = hacerOperacion(cifras: numeros,
                                 calculo: { (a:Int, b:Int) -> Int in
                                    return (a*2) + (b*2)
      })
   }
   return resultado
}

func hacerOperacion(cifras:[Int], calculo:(Int, Int) -> Int) -> Int {
   var resultado = cifras.first!
   for numero in cifras.dropFirst() {
      resultado = calculo(numero,resultado)
   }
   return resultado
}

let cifras = [5,7,3,9,2,5,1,8]
calculadora(numeros: cifras, operacion: .suma)
calculadora(numeros: cifras, operacion: .mul)
calculadora(numeros: cifras, operacion: .sumSquare)


