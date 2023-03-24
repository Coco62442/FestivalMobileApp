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
    @State var password : String = ""
    
    private func handleClickInscription() {
        var infosAuthentificationInscription = UtilisateurCreateDTO(nom: self.nom, prenom: self.prenom, email: self.email, password: self.password, isAdmin: false)
        
        // TODO: requête inscriptin (urls.urlRegister) c'est un post
    }
    
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
                SecureField(text: $password) {
                    Text("Mot de passe")
                }
            }
            Button("Connexion"){
                handleClickInscription()
            }
        }
    }
}

struct InscriptionUtilisateurView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionUtilisateurView()
    }
}
