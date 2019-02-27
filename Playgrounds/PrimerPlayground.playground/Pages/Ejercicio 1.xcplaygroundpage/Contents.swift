import Foundation

func limpieza(array:[Int]) -> [Int] {
   guard let primer = array.sorted().first else {
      return []
   }
   var resultado:[Int] = [primer]
   for elemento in array.sorted().dropFirst() {
      if elemento != resultado.last {
         resultado.append(elemento)
      }
   }
   return resultado
}

func limpieza(array:[Double]) -> [Double] {
   let noDup = Set(array)
   return Array(noDup).sorted()
}
