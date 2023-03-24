//
//  CreneauDTO.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

struct CreneauDTO: Codable, Hashable{
    let _id: String
    let heureDebut: Date
    let heureFin: Date
    let idJour: String
}

struct ResponseCreneaux: Decodable{
    var result : [CreneauDTO]
}
