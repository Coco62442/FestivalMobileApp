//
//  UtilisateurListState.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

enum UtilisateurListState {//}: Equatable {//: CustomStringConvertible {
    case ready
    case error
    case loadingUtilisateurs
    case loadedUtilisateurs([UtilisateurDTO])
}


