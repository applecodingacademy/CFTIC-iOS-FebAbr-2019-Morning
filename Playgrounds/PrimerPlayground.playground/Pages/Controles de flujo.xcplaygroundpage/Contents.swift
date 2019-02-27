import Foundation

var a = 10
do {
   let b = 20
   print(a,b)
}

if a > 10 {
   print("a es mayor que 10")
}

if a < 10 {
   print("a es menor que 10")
} else {
   print("a es mayor que 10")
}

if a == 10 {
   print("a es igual a 10")
} else if a < 10 {
   print("a es menor que 10")
} else {
   print("a es mayor que 10")
}

let temperatura = 22
if temperatura > 40 {
   print("Calor")
} else if temperatura > 30 {
   print("Calorcillo")
} else if temperatura > 20 {
   print("Fresquillo bueno")
} else if temperatura > 10 {
   print("Ya va refrescando")
} else if temperatura > 0 {
   print("Ponte un rebequita")
} else {
   print("Me hielo")
}

let nota = 8
switch nota {
case 0: print("Muy deficiente")
case 1,2: print("Deficiente")
case 3,4: print("Suspenso")
case 5: print("Suficiente")
case 6: print("Bien")
case 7,8: print("Notable")
case 9,10: print("Sobresaliente")
default: print("Nota no evaluable")
}

switch temperatura {
case 40...:print("Calorín")
case 30...40:print("Calor")
case 20...30:print("Calorcillo")
case 10...20:print("Refresca")
case 0...10:print("Ponte el abrigo")
case ...0:print("A esquiar")
default:print("Hace mucho frío")
}

let dato = 2
switch dato {
case let x where x > 2: print("x es mayor que 2")
case let x where x < 2: print("x es menor que 2")
default:()
}

for _ in 1...10 {
   print("Hola")
}

for valor in 1...10 where valor % 2 == 0 {
   print(valor)
}

for indice in stride(from: 0, to: 25, by: 5) {
   print(indice)
}

for indice in stride(from: 0, through: 25, by: 5) {
   print(indice)
}

var valor:Int = 0
let acierto = Int.random(in: 1...20)
print("Busco el número \(acierto)")
repeat {
   valor = Int.random(in: 1...20)
   if acierto != valor {
      print("No he acertado. Ha salido el número \(valor)")
   }
} while acierto != valor
print("Enhorabuena. Salió el \(valor) igual a \(acierto).")

let valorBuscar = Int.random(in: 1...100)
for i in (1...100).shuffled() {
   if i != valorBuscar {
      print("Buscando el valor \(valorBuscar). Voy por el \(i)")
   } else {
      print("Lo he encontrado")
      break
   }
}
