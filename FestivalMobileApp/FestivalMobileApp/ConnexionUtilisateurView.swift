//
//  ContentView.swift
//  FestiFun
//
//  Created by etud on 16/03/2023.
//

import SwiftUI

struct ConnexionUtilisateurView: View {
    
    private func handleClickLogin() {
        // TODO: faire la requête pr se login
    }
    
//    private var varGlobals: Config;
    
    @State var email : String = ""
    @State var mdp : String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack{
                Image(systemName: "figure.socialdance")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                Text("FestiFun")
            }
            Spacer()
            Form {
                Section(header: Text("Connexion bénévole")) {
                    TextField(text: $email) {
                        Text("Email")
                    }
                    SecureField(text: $mdp) {
                        Text("Mot de passe")
                    }
                    Button("Connexion"){
                        handleClickLogin()
                    }
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
        }
        .padding()
        
        
        UtilisateurListView(viewModel: UtilisateurListViewModel(users: []))
    }
    
}

struct ConnexionUtilisateurView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionUtilisateurView()
    }
}
