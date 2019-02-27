import Foundation

func maxMin(numeros:[Int]) -> (max:Int, min:Int) {
   guard let inicio = numeros.first else {
      return (0,0)
   }
   var valorMax = inicio
   var valorMin = inicio
   for num in numeros {
      if num > valorMax {
         valorMax = num
      }
      if num < valorMin {
         valorMin = num
      }
   }
   return(valorMax, valorMin)
}

func maxMin(numeros:[Double]) -> (max:Double, min:Double) {
   guard let min = numeros.sorted().first, let max = numeros.sorted().last else {
      return (0,0)
   }
   return(max, min)
}

func maxMin(numeros:[Float]) -> (max:Float, min:Float) {
   guard let min = numeros.min(), let max = numeros.max() else {
      return (0,0)
   }
   return(max, min)
}

let numeros:[Float] = [4.5,6.7,8.9,1.4,2.3,2.1,1.3,7.9]
maxMin(numeros:numeros)

