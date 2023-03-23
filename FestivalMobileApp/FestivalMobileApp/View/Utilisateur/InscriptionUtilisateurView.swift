//
//  InscriptionUtilisateurView.swift
//  FestivalMobileApp
//
//  Created by etud on 21/03/2023.
//

import SwiftUI

struct InscriptionUtilisateurView: View {
    @State var nom : String = ""
    @State var prenom : String = ""
    @State var email : String = ""
    @State var mdp : String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Informations personnelles")) {
                TextField(text: $nom) {
                    Text("Nom")
                }
                TextField(text: $prenom) {
                    Text("Prénom")
                }
                TextField(text: $email) {
                    Text("Email")
                }
            }
            
            Section(header: Text("Mot de passe")) {
                SecureField(text: $mdp) {
                    Text("Mot de passe")
                }
            }
            Button("Connexion"){}
        }
    }
}

struct InscriptionUtilisateurView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionUtilisateurView()
    }
}
