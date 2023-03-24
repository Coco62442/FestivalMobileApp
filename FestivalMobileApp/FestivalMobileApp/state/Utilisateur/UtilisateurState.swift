//
//  UtilisateurState.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

enum UtilisateurState {//}: Equatable {//: CustomStringConvertible {
    case ready
    case changingName(String)
    case changingInfos(UtilisateurDTO)
    case error
    case loadingUtilisateur
    case loadedUtilisateur(UtilisateurDTO)
    case loadingLoginUtilisateur
    case loadedLoginUtilisateur(UtilisateurDTO)
}


