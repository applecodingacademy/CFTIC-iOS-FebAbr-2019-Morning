import UIKit

let cadena = "Hola"

let a = 2
let b = 2.0
let e = 6.0

print(Double(a) + b)

typealias i = Int

let c:i = 0
let d = 5

d % a

b.truncatingRemainder(dividingBy: e)

a == c
let x = a != c
a > c
a < c
a <= c
a >= c

1 ..< 10
let xx = "a" ... "z"
xx.contains("f")
xx.contains("F")

...10

var suma = 0
for _ in 1...10 {
   print("Hola")
}
suma

if suma > 50 {
   print("Suma más de 50")
} else if suma > 40 {
   print("Suma más de 40 y menos de 50")
} else if suma > 30 {
   print("Suma más de 30 y menos de 40")
} else if suma > 20 {
   print("Suma más de 20 y menos de 30")
} else if suma > 10 {
   print("Suma más de 10 y menos de 20")
} else {
   print("Suma menos de 10")
}

suma == 5

switch suma {
case 0...10:
   print("De 0 a 10")
   fallthrough
case 11,12,13: print("11")
case let x where x > 10: print("Es mayor que 10")
case 13...:print("To the infinity and beyond")
default:()
}

let letra = "g"
switch letra {
case "a": print("Letra A")
case "b"..."e": print("Letras B a E")
case "f"..."h": print("Letras F a H")
default:()
}

for a in 1...10 where a % 2 == 0 {
   print(a)
}

for a in stride(from: 0, through: 25, by: 5) {
   print(a)
}

let xxx = Int.random(in: 1...20)
for i in 1...20 {
   if xxx == i {
      print("El número buscado es \(i)")
      break
   }
}


let xxx1 = Int.random(in: 1...20)
let xxx2 = Int.random(in: 1...20)
let xxx3 = Int.random(in: 1...20)
for i in 1...20 {
   if i != xxx1 && i != xxx2 && i != xxx3 {
      continue
   }
   switch i {
   case xxx1:
      print("Encontrado XXX1 : \(i)")
   case xxx2:
      print("Encontrado XXX2 : \(i)")
   case xxx3:
      print("Encontrado XXX3 : \(i)")
   default:()
   }
}
