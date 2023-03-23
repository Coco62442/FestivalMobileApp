//
//  FestivalDTO.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

struct FestivalDTO: Codable, Hashable{
    let _id: String
    let nom: String
    let annee: Date
    let nbrJours: Int
    let idBenevolles: [String]
    let isClosed: Bool
}

struct ResponseFestivals: Decodable{
    var result : [FestivalDTO]
}
