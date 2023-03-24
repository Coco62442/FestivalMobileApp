//
//  FestivalState.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

enum FestivalState {
    case ready
    case changingName(String)
    case changingNbrJours(Int)
    case error
    case loadingFestival
    case loadedFestival(FestivalDTO)
}
