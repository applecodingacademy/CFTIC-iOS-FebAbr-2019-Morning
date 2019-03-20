//
//  Model.swift
//  PrimeraAppSeria
//
//  Created by Dev1 on 20/03/2019.
//  Copyright © 2019 Dev1. All rights reserved.
//

import Foundation

var mockdata:[MockData] = []

struct MockData:Codable {
   let id:Int
   var first_name:String
   var last_name:String
   var email:String
   var avatar:URL
}

func loadData() {
   guard let ruta = Bundle.main.url(forResource: "MOCK_DATA", withExtension: "json") else {
      return
   }
   do {
      let rawData = try Data(contentsOf: ruta)
      let decoder = JSONDecoder()
      mockdata = try decoder.decode([MockData].self, from: rawData)
   } catch {
      print("Error \(error)")
   }
}
