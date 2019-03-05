import UIKit

func suma3(numero:Int) -> Int {
   return numero + 3
}

let suma = suma3(numero: 5)
let sumade3 = suma3
sumade3(5)

var closure3 = { (numero:Int) -> Int in
   return numero + 3
}

var closure5:(Int) -> Int = { (numero:Int) -> Int in
   return numero + 5
}

func suman(num:Int, operacion: (Int) -> Int) -> Int {
   return operacion(num)
}

suman(num: 10, operacion: closure3)
suman(num: 10, operacion: closure5)

suman(num: 10, operacion: { (numero:Int) -> Int in return numero + 5 })

suman(num: 10, operacion: { numero -> Int in return numero + 5 })

suman(num: 10, operacion: { numero in return numero + 5 })

suman(num: 10, operacion: { return $0 + 5 })

suman(num: 10, operacion: { $0 + 5 })

suman(num: 10) {
   if $0 > 5 {
      return $0 + 5 }
   else {
      return $0 + 3 }
}

func repetir(veces:Int, tarea:() -> ()) {
   for _ in 0..<veces {
      tarea()
   }
}

repetir(veces: 6) { print("Ola k ase") }

func elegirCuenta(haciaAtras:Bool) -> (Int) -> Int {
   let pasoAdelante = { $0 + 1 }
   func pasoAtras(entrada:Int) -> Int {
      return entrada - 1
   }
   if haciaAtras {
      return pasoAtras
   } else {
      return pasoAdelante
   }
}

var valor = -7
let contador = elegirCuenta(haciaAtras: valor > 0)
while valor != 0 {
   valor = contador(valor)
   print(valor)
}
