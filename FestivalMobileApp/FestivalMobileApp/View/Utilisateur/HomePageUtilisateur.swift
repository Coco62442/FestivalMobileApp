//
//  HomePageUtilisateur.swift
//  FestivalMobileApp
//
//  Created by etud on 21/03/2023.
//

import SwiftUI

struct HomePageUtilisateur: View {
    
    // TODO: fetch la liste des festivals
    var festivalList: Any = []
    @State private var changeViewToFestivals = false
    /*
    var utilisateur: UtilisateurDTO = UtilisateurDTO(_id: "", nom: "", prenom: "", email: "", isAdmin: false)
    
    var utilisateurIntent : UtilisateurIntent
    
    init(){
        self.utilisateur = utilisateurIntent.getUser(idUtilisateur: "641c30a4ce0582aea7fbe602")
    }*/
    
    var body: some View {
        
        if changeViewToFestivals {
            //HomePageUtilisateur()
        } else {
            //    HomePageUtilisateur()
        }
        
        VStack {
            //Text("Nom :"+user.nom)
            Text("FestiFun!")
            Spacer()
            Text("Bienvenu dans l'appli FestiFun, la première application qui te permet de te proposer facilement en bénévole sur un festival !")
            
            AsyncImage(url: URL(string: "https://cdn-icons-png.flaticon.com/512/2917/2917748.png")) { phase in
                if let image = phase.image {
                    image // Displays the loaded image.
                } else if phase.error != nil {
                    VStack{
                        Spacer()
                        Image(systemName: "exclamationmark.triangle.fill")
                                        .imageScale(.large)
                                        .foregroundColor(.red)
                        Text("Erreur au chargement de l'image").bold().foregroundColor(.red)
                        Spacer()
                    }// Indicates an error.
                } else {
                    Text("Image de bénévole") // Acts as a placeholder.
                }
            }
                VStack {
                    Text("Accéder aux Festivals auquel je me suis inscrit en tant que bénévol")
                    
                }
            

            FooterUtilisateur(trackView: "HomePage")
        }
    }
}

struct HomePageUtilisateur_Previews: PreviewProvider {
    static var previews: some View {
        HomePageUtilisateur()
    }
}
