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
    case error
    case loadingUtilisateur
    case loadedUtilisateur(UtilisateurDTO)
}
