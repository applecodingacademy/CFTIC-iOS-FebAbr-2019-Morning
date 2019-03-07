import Foundation

var funciones:[() -> ()] = []

class Test {
   var x = 10
   
   private func closureQueNoEscapa(closure:() -> ()) {
      closure()
   }
   
   private func closureQueSIEscapa(closure:@escaping () -> ()) {
      funciones.append(closure)
   }
   
   func test() {
      closureQueNoEscapa { x = 20 }
      closureQueSIEscapa { self.x = 15 }
   }
}

let test1 = Test()
test1.x
test1.test()
test1.x

funciones.first?()

test1.x

