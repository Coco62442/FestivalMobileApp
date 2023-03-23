//
//  JSONHelper.swift
//  FestivalMobileApp
//
//  Created by etud on 22/03/2023.
//

import Foundation

struct JSONHelper{
   static func loadFromFile(name:String, extension: String) async -> Data?{
      guard let fileURL = Bundle.main.url(forResource: "playlist", withExtension: "json") else { return nil }
      guard let fileContents = try? Data(contentsOf: fileURL) else { return nil }
      return fileContents
   }
   
   static func decode<T: Decodable>(data: Data) async -> T?{
      let decoder = JSONDecoder()
      guard let decoded = try? decoder.decode(T.self, from: data) else {
         return nil
      }
      return decoded
   }
    
   static func encode<T: Encodable>(data: T) async -> Data?{
      let encoder = JSONEncoder()
      return try? encoder.encode(data)
   }
}
