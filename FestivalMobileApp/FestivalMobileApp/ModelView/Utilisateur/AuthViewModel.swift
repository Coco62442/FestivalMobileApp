//
//  AuthViewModel.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

class AuthViewModel: ObservableObject {
  @Published var email: String = ""
  @Published var password: String = ""
  @Published var showProgressView = false
  @Published var error: Authentification.AuthentificationError?
  
  @Published var token = ""
    
  var loginDisabled: Bool {
    email.isEmpty || password.isEmpty
  }
    
    func login(email : String, mdp : String){
    showProgressView = true
    Task {
        let token: String = await URLSession.shared.login(id: email, pwd: password)
      if(token != "") { //Connexion réussie
        
        DispatchQueue.main.async { //Pour pouvoir modifier des variables Published
          self.showProgressView = false
          self.token = token
          completion(true)
        }
      }
      else {
        DispatchQueue.main.async { //Pour pouvoir modifier des variables Published
          self.error = .invalidCredentials
        }
        completion(false)
      }
      
      
    }
  }
}
