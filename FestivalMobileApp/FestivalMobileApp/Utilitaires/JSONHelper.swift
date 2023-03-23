//
//  JSONHelper.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation
/*
extension URLSession{
    //pour décoder le json récupérer de l'api
    
    func getJSON<T: Decodable>(from url:URL) async throws -> T{
        let (data,_) = try await data(from:url)
        let decoder = JSONDecoder() //décodeur
        let decoded = try decoder.decode(T.self,from: data)
        return decoded
    }
}*/
struct JSONHelper{
    static func decode<T : Decodable>(data: Data) async -> T?{
        let decoder = JSONDecoder()
       // debugPrint("format data")
       // debugPrint(data)
        /*guard let decoded = try? decoder.decode(T.self, from: data) else{
            
            debugPrint("errerur deco")
            return nil
        }*/
        do {
            let decoded = try decoder.decode(T.self, from: data)
            debugPrint("dans le do")
            debugPrint(decoded)
            return decoded
        } catch {
            debugPrint("error euh")
            debugPrint(error)
            debugPrint(error.localizedDescription)
            return nil
        }
      //  debugPrint("DECODED")
       // return decoded
        //debugPrint(decoded)
        //return decoded
     //   return nil
    }
    
    static func encode<T : Encodable>(data: T) async -> Data?{
        let encoder = JSONEncoder()
        return try? encoder.encode(data)
    }
}
