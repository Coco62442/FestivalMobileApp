//
//  UtilisateurListView.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import SwiftUI

struct UtilisateurListView: View {
    
    @ObservedObject var users : UtilisateurListViewModel
    var utilisateurIntent : UtilisateurIntent
    
    init(viewModel : UtilisateurListViewModel){
        self.users = viewModel
        self.utilisateurIntent = UtilisateurIntent(model: viewModel)
    }
    
    var body : some View {
        NavigationStack{
            VStack {
                List{
                    ForEach(users.users, id: \.self) { user in
                        NavigationLink(value: user){
                            UtilisateurItemView(user: user)
                        }
                    }
                }
            }
        }.task {
            await utilisateurIntent.getUsers()
        }
    }
}
