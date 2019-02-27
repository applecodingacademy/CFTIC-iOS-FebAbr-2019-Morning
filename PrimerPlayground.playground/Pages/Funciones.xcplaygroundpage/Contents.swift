import Foundation

func sumar(_ numeros:inout [Int]) -> Int {
   if numeros.isEmpty {
      return 0
   }
   var resultado = 0
   for numero in numeros {
      resultado += numero
   }
   numeros.append(resultado)
   return resultado
}

func sumar(_ numeros:Double...) -> Double {
   if numeros.isEmpty {
      return 0.0
   }
   var resultado = 0.0
   for numero in numeros {
      resultado += numero
   }
   return resultado
}

sumar(1.0,3,5,6.0,4.3,5,6.2,3,4)

func sumar(_ numeros:[Int]) -> [Int] {
   if numeros.isEmpty {
      return []
   }
   var resultado:[Int] = []
   for (indice, numero) in numeros.dropLast().enumerated() {
      resultado.append(numero + numeros[indice+1])
   }
   return resultado
}

var valores = [1,4,6,8,4,6,2,8,6,5]
let valoresD = [1.1,4.3,6.3,8.1,4.0,6,2,8.1,6.2,5]

valores
let suma:Int = sumar(&valores)
valores
let suma2:[Int] = sumar(valores)

func sumaMultiple(numeros:[Int]) -> (suma:Int, multiple:Int) {
   var resultado1 = 0, resultado2 = 1
   for numero in numeros {
      resultado1 += numero
      resultado2 *= numero
   }
   return (resultado1, resultado2)
}

func sumaMultiple(numeros:[Double]) -> (suma:Double, multiple:Double) {
   var resultado1 = 0.0, resultado2 = 1.0
   for numero in numeros {
      resultado1 += numero
      resultado2 *= numero
   }
   return (resultado1, resultado2)
}

func sumaMultiple(numeros:[Int], signo operacion:String = "+") -> Int {
   if numeros.isEmpty || !(operacion == "+" || operacion == "-" || operacion == "*" || operacion == "/") {
      return 0
   }
   var resultado = 0
   if operacion == "*" || operacion == "/" {
      resultado = 1
   }
   for numero in numeros {
      switch operacion {
      case "+": resultado += numero
      case "-": resultado -= numero
      case "*": resultado *= numero
      case "/": resultado /= numero
      default:()
      }
   }
   return resultado
}

let resultado = sumaMultiple(numeros: valores).suma
let (sumar, mul) = sumaMultiple(numeros: valores)
sumar
mul

sumaMultiple(numeros: valoresD)
sumaMultiple(numeros: valores, signo: "+")
let res:Int = sumaMultiple(numeros: valores)

func llamadaRed() -> String {
   defer {
      print("Cierro conexión")
   }
   print("Abro conexión")
   let resultado = Int.random(in: 0...5)
   switch resultado {
   case 1,2: return "Operación realizada"
   case 3: return "Fallo de datos"
   case 4: return "Timeout"
   case 5: return "Servidor 'petao'"
   default:()
   }
   return "Resultado extraño"
}

llamadaRed()
