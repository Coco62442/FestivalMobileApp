//
//  UtilisateurLoginDTO.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

struct UtilisateurLoginDTO: Codable, Hashable{
    let email: String
    let password: String
}

struct ResponseUtilisateurLogin: Decodable{
    var result : [UtilisateurLoginDTO]
}
