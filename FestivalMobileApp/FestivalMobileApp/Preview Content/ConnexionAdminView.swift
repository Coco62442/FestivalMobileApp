//
//  ConnexionAdminView.swift
//  FestivalMobileApp
//
//  Created by etud on 21/03/2023.
//

import SwiftUI

struct ConnexionAdminView: View {
    @State var email : String = ""
    @State var mdp: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Connexion admin")) {
                TextField(text: $email) {
                    Text("Email")
                }
                SecureField(text: $mdp) {
                    Text("Mot de passe")
                }
                Button("Connexion"){}
            }
        }    }
}

struct ConnexionAdminView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionAdminView()
    }
}
