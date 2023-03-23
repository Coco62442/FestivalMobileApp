//
//  UtilisateurListView.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import SwiftUI

struct UtilisateurListView: View {
    
    @ObservedObject var users : UtilisateurListViewModel
    var utilisateurListIntent : UtilisateurListIntent
    
    init(viewModel : UtilisateurListViewModel){
        self.users = viewModel
        self.utilisateurListIntent = UtilisateurListIntent(model: viewModel)
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
            await utilisateurListIntent.getUsers()
        }
    }
}
