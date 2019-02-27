import Foundation

var matrixmix = [1,3,"Hola","Adiós",2.0,true] as [Any]
let valor2 = matrixmix[1] as? String
if let valor = matrixmix[2] as? String {
   print(valor.lowercased())
}
//let value = matrixmix[2] as! Int

let a = matrixmix[1] is Int

let pelicula = (pelicula:"Tomorrowland", año:2015)
pelicula.año
let pelicula2:(pelicula:String, año:Int, ranking:Double) = ("Die Hard", 1988, 9.9)
let (film,_,rank) = pelicula2
film
rank

switch pelicula2 {
case (_,1995,_): print("Película de 1995")
case let (_,year,_) where year >= 1980 && year <= 1989: print("Ochentera")
default:()
}

if case let (_,1988,_) = pelicula2 {
   print("De 1988")
}

let (v1,v2,v3,v4,v5) = (20,30,40,50,50)
v1
v2
v3
v4
v5

var x = 320
var y = 200

(x,y) = (y,x)


