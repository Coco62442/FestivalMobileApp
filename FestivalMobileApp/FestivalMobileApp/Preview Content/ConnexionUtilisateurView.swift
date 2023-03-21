//
//  ContentView.swift
//  FestiFun
//
//  Created by etud on 16/03/2023.
//

import SwiftUI

struct ConnexionUtilisateurView: View {
    
    @State var email : String = ""
    @State var mdp : String = ""
    
    var body: some View {
        VStack {
            VStack{
                Image(systemName: "figure.socialdance")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                Text("FestiFun")
            }
            Spacer()
            NavigationStack {
                Form {
                    Section(header: Text("Connexion bénévole")) {
                        TextField(text: $email) {
                            Text("Email")
                        }
                        SecureField(text: $mdp) {
                            Text("Mot de passe")
                        }
                        Button("Connexion"){}
                    }
                }
                Spacer()
                VStack {
                    Text("Tu n'as pas encore de compte ?")
                    NavigationLink( destination: InscriptionUtilisateurView()){
                        Text("Inscrit toi !")
                    }
                }
                Spacer()
                NavigationLink(destination: ConnexionAdminView()) {
                    Text("Connexion admin")
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ConnexionUtilisateurView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionUtilisateurView()
    }
}
