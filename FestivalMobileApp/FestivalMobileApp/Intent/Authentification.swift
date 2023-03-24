//
//  Authentification.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation
import SwiftUI

class Authentification: ObservableObject {
    @Published var isValidated = false
    @Published var isAdminValidated = false
    
    var utilisateurListIntent : UtilisateurListIntent
    
    enum AuthentificationError: Error, Identifiable {
        case invalidCredentials
        var id: String {
            self.localizedDescription
        }
        var errorDescription: String? {
            switch self {
            case .invalidCredentials:
                return ("Mauvais identifiants, veuillez réessayer")
            }
        }
    }
    
    // 0 pour admin, 1 pour utilisateur, -1 pour erreur
    func updateValidation(success: Int) async {
        if(success == 0) {
            self.isAdminValidated = true
        } else if (success == 1) {
            self.isValidated = true
        } else {
            self.isAdminValidated = false
            self.isValidated = false
        }
    }
    
    
    
    
    
    
}
