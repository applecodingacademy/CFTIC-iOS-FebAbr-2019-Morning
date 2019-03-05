import Foundation

enum Operacion {
   case suma, resta, mul, div, sumSquare
}

func calculadora(numeros:[Int], operacion: Operacion) -> Int {
   guard var resultado = numeros.first else {
      return 0
   }
   switch operacion {
   case .suma:
      resultado = hacerOperacion(cifras: numeros, calculo: suma)
   case .resta:
      resultado = hacerOperacion(cifras: numeros, calculo: resta)
   case .mul:
      resultado = hacerOperacion(cifras: numeros, calculo: mul)
   case .div:
      resultado = hacerOperacion(cifras: numeros, calculo: div)
   case .sumSquare:
      resultado = hacerOperacion(cifras: numeros, calculo: sumaSquare)
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

func suma(a:Int, b:Int) -> Int {
   return a + b
}

func resta(a:Int, b:Int) -> Int {
   return a - b
}

func mul(a:Int, b:Int) -> Int {
   return a * b
}

func div(a:Int, b:Int) -> Int {
   return a / b
}

func sumaSquare(a:Int, b:Int) -> Int {
   return (a*2) + (b*2)
}

let cifras = [5,7,3,9,2,5,1,8]
calculadora(numeros: cifras, operacion: .suma)
calculadora(numeros: cifras, operacion: .mul)
calculadora(numeros: cifras, operacion: .sumSquare)

let sumaTest = suma(a: 10, b: 20)
let sumaFunc = suma
