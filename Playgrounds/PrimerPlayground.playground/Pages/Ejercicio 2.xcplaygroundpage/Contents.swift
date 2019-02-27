import Foundation

let cadena = "A long a time ago in a galaxy far far away"

func caracterEn(cadena:String, pos:Int) -> Character? {
   if cadena.isEmpty || pos >= cadena.count || pos < 0 {
      return nil
   }
   let posicion = cadena.index(cadena.startIndex, offsetBy: pos)
   return cadena[posicion]
}

caracterEn(cadena: cadena, pos: 300)
