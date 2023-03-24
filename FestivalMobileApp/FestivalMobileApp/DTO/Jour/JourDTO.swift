//
//  JourDTO.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

struct JourDTO: Codable, Hashable{
    let _id: String
    let nom: String
    let date: Date
    let debutHeure: Date
    let finHeure: Date
    let idFestival: String
}

struct ResponseJours: Decodable{
    var result : [JourDTO]
}

