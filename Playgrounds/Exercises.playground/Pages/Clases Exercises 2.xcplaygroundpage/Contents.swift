import Foundation

class Personas {
   enum Roles {
      case profesor, alumno
   }

   var nombre:String
   var ID:String
   var rol:Roles
   
   init(nombre:String, ID:String, rol:Roles) {
      self.nombre = nombre
      self.ID = ID
      self.rol = rol
   }
   
   init(nombreProfesor nombre:String, ID:String) {
      self.nombre = nombre
      self.ID = ID
      self.rol = .profesor
   }
   
   init(nombreAlumno nombre:String, ID:String) {
      self.nombre = nombre
      self.ID = ID
      self.rol = .alumno
   }
}

struct Asignaturas {
   var nombre:String
   var curso:Int
   var grado:String
}

class Profesor:Personas {
   var asignaturas:[Asignaturas] = []
   
   init(nombre:String, ID:String) {
      super.init(nombreProfesor: nombre, ID: ID)
   }
}

let profesorProton = Profesor(nombre: "Protón", ID: "101")
let fisica = Asignaturas(nombre: "Física", curso: 4, grado: "Superior")
profesorProton.asignaturas.append(fisica)

class Alumno:Personas {
   var curso:String
   
   init(nombre:String, ID:String, curso:String) {
      self.curso = curso
      super.init(nombreAlumno: nombre, ID: ID)
   }
}

struct Clase {
   var tutor:Profesor
   var profesores:[Profesor]
   var alumnos:[Alumno]
}

let asig1 = Asignaturas(nombre: "Science", curso: 1, grado: "ESO")
let asig2 = Asignaturas(nombre: "Lengua", curso: 1, grado: "ESO")
let asig3 = Asignaturas(nombre: "Programación", curso: 1, grado: "ESO")
let asig4 = Asignaturas(nombre: "Matemáticas", curso: 1, grado: "ESO")

let profesor1 = Profesor(nombre: "Julio César Fernández", ID: "10101")
profesor1.asignaturas = [asig1, asig3]
let profesor2 = Profesor(nombre: "Doc Brown", ID: "1111")
profesor2.asignaturas = [asig1, asig4]

let alumno1 = Alumno(nombre: "Paquito Flowers", ID: "11", curso: "ESO")
let alumno2 = Alumno(nombre: "Paca Carmona", ID: "12", curso: "ESO")
let alumno3 = Alumno(nombre: "Steve Jobs", ID: "13", curso: "ESO")

let clase1 = Clase(tutor: profesorProton, profesores: [profesor1, profesor2], alumnos: [alumno1, alumno2, alumno3])

