//
//  FestivalModelObserver.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

protocol FestivalModelObserver {
    func changeName(name: String)
    func changeNbrJours(nbrJours: Int)
}
