//
//  ContentView.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authenficiation = Authentification()
  
    var body: some View {

        if (authenficiation.isAdminValidated){
            HomePageAdmin()
                .environmentObject(authenficiation)
        }
        else if(authenficiation.isValidated) {
            HomePageUtilisateur()
            .environmentObject(authenficiation)
        }
        else {
            ConnexionUtilisateurView()
            .environmentObject(authenficiation)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
