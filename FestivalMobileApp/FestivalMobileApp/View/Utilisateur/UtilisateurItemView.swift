//
//  UtilisateurItemView.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation
import SwiftUI

struct UtilisateurItemView: View {
    
    @ObservedObject var user: UtilisateurViewModel
    
    init(user: UtilisateurViewModel) {
        self.user = user
    }
    
    var body: some View {
        Text(user.nom)
        Text(user.prenom)
        Text(user.email)
    }
}
