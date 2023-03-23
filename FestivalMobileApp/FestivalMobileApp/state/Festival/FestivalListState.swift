//
//  FestivalListState.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

enum FestivalListState {
    case ready
    case changingName(String)
    case changingNbrJours(Int)
    case error
    case loadingFestivals
    case loadedFestivals([FestivalDTO])
}
