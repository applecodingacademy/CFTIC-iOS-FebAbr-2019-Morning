import Foundation

let pelicula = (film:"Capitana Marvel", año:2019)

var estreno:(film:String, año:Int, rank:Double) = ("Vengadores End Game", 2019, 9.7)
estreno.rank = 10

let ranking = estreno.rank
let (movie,_,rank) = estreno
movie
rank

switch estreno {
case (_,2019,_): print("Película de 2019")
case let (_,year,_) where year < 2000: print("Película del siglo XX")
default:()
}

if case (_,2019,_) = estreno {
   print("Película de 2019")
}

//let a = 1
//let b = 2
//let c = 3
//let d = 4
//let e = 5
//let f = 6
//let g = 7
//let h = 8
//let i = 9

let (a,b,c,d,e,f,g,h,i) = (1,2,3,4,5,6,7,8,9)
a
b
c
d
e
f
g
h
i

var x = 300
var y = 200

var temp = x
y = x
x = temp

(x,y) = (y,x)

var estrenos:[(film:String, año:Int, rank:Double)] = []
estrenos.append(estreno)
estrenos.first?.film
estrenos[0].rank

