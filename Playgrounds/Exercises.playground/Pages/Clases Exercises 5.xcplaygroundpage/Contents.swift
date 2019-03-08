import Foundation

func cadenaTransformer(cadena:String, transformer:(String) -> String) -> String {
   return transformer(cadena)
}

let saludo = "Valar Morghulis... Valar Dohaeris"
let caso1 = cadenaTransformer(cadena: saludo) { $0.lowercased() }
let caso2 = cadenaTransformer(cadena: saludo) { $0.uppercased() }
let caso3 = cadenaTransformer(cadena: saludo)
   { cadena in
      let nueva = cadena.enumerated().map { (ele:(offset:Int, element: Character)) -> Character in
         if ele.offset % 2 == 0 {
            return Character(String(ele.element).uppercased())
         } else {
            return Character(String(ele.element).lowercased())
         }
      }
      return String(nueva)
}

print(caso1, caso2, caso3)
