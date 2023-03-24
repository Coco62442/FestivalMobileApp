//
//  UtilisateurIntent.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

import SwiftUI

struct UtilisateurIntent {
    
    
    @ObservedObject private var model : UtilisateurViewModel
    
    var urls = Config()
    
    init(model: UtilisateurViewModel){
        self.model = model
    }
    
    func loginUser(user : UtilisateurLoginDTO) async {
        self.model.state = .loadingLoginUtilisateur
        
        guard let url = URL(string: urls.urlLogin) else {
            debugPrint("bad url login")
            return
        }
        do{
            let data : Result<UtilisateurDTO,ErrorApi> = await URLSession.shared.login(url: url, element: user)
            debugPrint("\(data)")
            switch data {
            case .success(_):
                do {
                    let user : UtilisateurDTO = try data.get()
                    model.state = .loadedLoginUtilisateur(user)
                    return
                }
                catch {
                    debugPrint("erreur lors de la récupération des données")
                }
            case .failure(let err):
                debugPrint("\(err)")
                return
            }
        }
    }
    
    
    func getUser(idUtilisateur : String) async {
        self.model.state = .loadingUtilisateur
        
        guard let url = URL(string: urls.urlBenevole+"/"+idUtilisateur) else {
            debugPrint("bad url getUser")
            return
        }
        do{
            let data : Result<UtilisateurDTO,ErrorApi> = await URLSession.shared.get(url: url)
            debugPrint("\(data)")
            switch data {
            case .success(_):
                do {
                    let user : UtilisateurDTO = try data.get()
                    model.state = .loadedUtilisateur(user)
                    return
                }
                catch {
                    debugPrint("erreur lors de la récupération des données")
                }
            case .failure(let err):
                debugPrint("\(err)")
                return
            }
        }
    }
}

