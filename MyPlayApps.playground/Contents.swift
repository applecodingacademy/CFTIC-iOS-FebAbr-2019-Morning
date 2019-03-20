import UIKit
import PlaygroundSupport

class MiTabla:UITableViewController {
   
   let datos = ["Hola", "Adiós", "Qué pasa", "Welcome", "Qué pasa tío", "Ola k ase", "Eeey", "Ale"]
   let datos2 = ["Madrid", "Granada", "Málaga", "Córdoba", "Salamanca", "Barcelona", "Lugo", "Toledo", "Ciudad Real", "Valencia", "Alicante"]
   
   override func viewDidLoad() {
      title = "Tabla de prueba"
      tableView.register(UITableViewCell.self, forCellReuseIdentifier: "celda")
   }
   
   override func numberOfSections(in tableView: UITableView) -> Int {
      return 2
   }
   
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      if section == 0 {
         return datos.count
      } else {
         return datos2.count
      }
   }
   
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
      if indexPath.section == 0 {
         celda.textLabel?.text = datos[indexPath.row]
      } else {
         celda.textLabel?.text = datos2[indexPath.row]
      }
      print(indexPath.section, indexPath.row)
      return celda
   }
   
   override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      if section == 0 {
         return "Saludos y despedidas"
      } else {
         return "Provincias"
      }
   }
}

PlaygroundPage.current.liveView = UINavigationController(rootViewController: MiTabla())

