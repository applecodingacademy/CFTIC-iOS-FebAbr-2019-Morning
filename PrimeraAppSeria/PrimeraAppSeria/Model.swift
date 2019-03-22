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
   guard let ruta = Bundle.main.url(forResource: "MOCK_DATA", withExtension: "json"), let rutaDoc = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("MOCK_DATA").appendingPathExtension("json") else {
      return
   }
   print(rutaDoc)
   let rutaFinal = FileManager.default.fileExists(atPath: rutaDoc.path) ? rutaDoc : ruta
   do {
      let rawData = try Data(contentsOf: rutaFinal)
      let decoder = JSONDecoder()
      mockdata = try decoder.decode([MockData].self, from: rawData)
   } catch {
      print("Error \(error)")
   }
}

func saveData() {
   guard let ruta = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("MOCK_DATA").appendingPathExtension("json") else {
      return
   }
   if FileManager.default.fileExists(atPath: ruta.path) {
      try? FileManager.default.removeItem(at: ruta)
   }
   do {
      let encoder = JSONEncoder()
      let rawData = try encoder.encode(mockdata)
      try rawData.write(to: ruta, options: .atomicWrite)
   } catch {
      print("Error \(error)")
   }
}
