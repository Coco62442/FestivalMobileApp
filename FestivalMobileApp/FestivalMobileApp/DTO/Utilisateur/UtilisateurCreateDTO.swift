//
//  UtilisateurCreateDTO.swift
//  FestivalMobileApp
//
//  Created by Laura on 25/03/2023.
//

import Foundation

struct UtilisateurCreateDTO: Codable, Hashable{
    let nom: String
    let prenom: String
    let email: String
    let password: String
    let isAdmin: Bool
}

struct ResponseCreateUtilisateur: Decodable{
    var result : UtilisateurDTO
}
