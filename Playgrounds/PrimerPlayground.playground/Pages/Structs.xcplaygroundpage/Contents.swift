import Foundation

struct Empleado {
   let nombre:String
   let apellidos:String
   let departamento:String
   var salario:Double
   
//   init(contabilidadNombre nombre:String, apellidos:String) {
//      self.nombre = nombre
//      self.apellidos = apellidos
//      self.departamento = "Contabilidad"
//      self.salario = 25000
//   }
   
   func impuesto() -> Double {
      var retencion = 0.12
      switch salario {
      case let sueldo where sueldo > 35000:
         retencion = 0.42
      case let sueldo where sueldo > 29000:
         retencion = 0.33
      case let sueldo where sueldo > 24000:
         retencion = 0.25
      case let sueldo where sueldo > 16000:
         retencion = 0.18
      default:()
      }
      return retencion
   }
   
   mutating func fijarSalario(salario:Double) {
      self.salario = salario
   }
   
   func verSalario() -> Double {
      return salario
   }
}




