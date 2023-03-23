//
//  modelFestival.swift
//  FestivalMobileApp
//
//  Created by etud on 22/03/2023.
//

import Foundation

struct ModelFestival {
    private var nom: String;
    private var annee: Date;
    private var nbrJours: Int;
    private var idZones: [String];
    private var idJours: [String];
    private var isClosed: Bool;
    
    public var festivalState: StateFestival;
    
}
