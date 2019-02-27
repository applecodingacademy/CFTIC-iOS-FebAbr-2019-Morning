import Foundation

class Test {
   var propiedad:Int?
   func metodo() {
      print(propiedad ?? 0)
   }
}

let test1 = Test()
let test2 = Test()
test1.propiedad = 1
test2.propiedad = 3

test1.metodo()
test2.metodo()

class TestHijo:Test {
   var nuevaPropiedad:Int?
   func nuevoMetodo() {
      print(self.nuevaPropiedad ?? 0, super.propiedad ?? 0)
   }
}

let hijo1 = TestHijo()
let hija2 = TestHijo()

hijo1.nuevaPropiedad = 10
hijo1.propiedad = 5
hijo1.metodo()
hijo1.nuevoMetodo()

