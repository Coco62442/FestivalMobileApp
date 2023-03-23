//
//  UtilisateurDTO.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

struct UtilisateurDTO: Codable, Hashable{
    let _id: String
    let nom: String
    let prenom: String
    let email: String
    //let mdp: String
    let isAdmin: Bool
}

struct ResponseUtilisateur: Decodable{
    var result : [UtilisateurDTO]
}
