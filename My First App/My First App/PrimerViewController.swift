//
//  PrimerViewController.swift
//  My First App
//
//  Created by Dev1 on 13/03/2019.
//  Copyright © 2019 Dev1. All rights reserved.
//

import UIKit

class PrimerViewController: UIViewController {

   @IBOutlet weak var campo: UITextField!
   @IBOutlet weak var etiqueta: UILabel!

   override func viewDidLoad() {
      super.viewDidLoad()
      etiqueta.textColor = UIColor(named: "Fondo")
   }
    
   @IBAction func pulsoBoton(_ sender: UIButton) {
      print(campo.text!)
   }
   
   
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
