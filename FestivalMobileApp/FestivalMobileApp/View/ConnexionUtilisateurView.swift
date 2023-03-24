//
//  ContentView.swift
//  FestiFun
//
//  Created by etud on 16/03/2023.
//

import SwiftUI

struct ConnexionUtilisateurView: View {
    /*
    private func handleClickLogin() {
        var infosAuthentificationLogin: UtilisateurLoginDTO = UtilisateurLoginDTO(email: self.email, password: self.mdp)
        
        // TODO: requête de login (c'est un post) urls.urlLogin
    }
    */
    // Changement de vue
    // utiliser les .sheet pour afficher par dessus
    // par une variable d'environnement (enumm) switch case qui permet de changer de page
    // .environnementObject
    //
    // cacher la barre de navigation
    
    private var urls = Config();
    
    @State var email : String = ""
    @State var mdp : String = ""
    
    @EnvironmentObject var authentification: Authentification
    @ObservedObject var userModel : UtilisateurViewModel
    
    var utilisateurIntent : UtilisateurIntent
    @State var utilisateurLogin : UtilisateurLoginDTO = UtilisateurLoginDTO(email: "", password: "")
    /*
    init(){
        self.userModel = userModel
    }
    */
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
                    Button("Se connecter") {
                        /*
                        utilisateurLogin.email = self.email
                        utilisateurLogin.mdp = self.mdp
                        
                        await utilisateurIntent.loginUser(user: utilisateurLogin)
                            .onChange(of: self.user.state) { newState in
                            switch newState {
                                case .loadedLoginUtilisateur(let utilisateur):
                                  // Utilisateur connecté, faites quelque chose ici, par exemple, naviguez vers une autre vue.
                                case .loadingLoginUtilisateur:
                                  // Afficher une indication de chargement si vous le souhaitez.
                                default:
                                    break
                                }
                          }
                         */
                        
                    }
                    .padding()
                    .background(Color(red:0, green: 0, blue: 0.5))
                    .clipShape(Capsule())
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
