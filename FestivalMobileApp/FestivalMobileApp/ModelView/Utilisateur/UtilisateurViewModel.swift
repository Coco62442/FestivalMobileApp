//
//  UtilisateurViewModel.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

class UtilisateurViewModel : ObservableObject, Hashable, Equatable{//, UserModelObserver {
    
    @Published var id : String
    @Published var nom : String
    @Published var prenom : String
    @Published var email : String
    @Published var isAdmin : Bool
    
    // -----------------------------------------------------------
    // State Intent management
    @Published var state : UtilisateurState = .ready {
        didSet {
            switch state {
            case .error:
                debugPrint("error")
                self.state = .ready
            case .ready:
                debugPrint("UserViewModel: ready state")
                debugPrint("--------------------------------------")
            default:
                break
            }
        }
    }
    
    static func == (lhs: UtilisateurViewModel, rhs: UtilisateurViewModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
    init(user : UtilisateurDTO) {
        self.id = user._id
        self.nom = user.nom
        self.prenom = user.prenom
        self.email = user.email
        self.isAdmin = user.isAdmin
    }
}
