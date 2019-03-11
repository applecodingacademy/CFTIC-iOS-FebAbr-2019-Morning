import Foundation

extension String {
   func posIn(sub:String) -> Int? {
      guard let rango = range(of: sub), !sub.isEmpty else {
         return nil
      }
      return distance(from: startIndex, to: rango.lowerBound)
   }
   
   var words:Int {
      return components(separatedBy: " ").count
   }
}

let test = "One ring to rule them all, one ring to find them"
test.posIn(sub:"rule")
test.posIn(sub:"anillo")
test.words


