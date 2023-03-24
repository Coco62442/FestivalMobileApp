//
//  UserSession.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

class UserSession {

    static let shared = UserSession()
    
    var user: Utilisateur?
    
    private init() {}
}
