//
//  UtilisateurListIntent.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation
import SwiftUI

struct UtilisateurListIntent {
    
    
    @ObservedObject private var model : UtilisateurListViewModel
    
    var urls = Config()
    
    init(model: UtilisateurListViewModel){
        self.model = model
    }
    
    func getUsers() async {
        self.model.state = .loadingUtilisateurs
        
        guard let url = URL(string: urls.urlBenevole) else {
            debugPrint("bad url getUsers")
            return
        }
        do{
            let data : Result<[UtilisateurDTO],ErrorApi> = await URLSession.shared.get(url: url)
            debugPrint("\(data)")
            switch data {
                case .success(_):
                do {
                    let users : [UtilisateurDTO] = try data.get()
                    model.state = .loadedUtilisateurs(users)
                    return
                }
                case .failure(let err):
                debugPrint("\(err)")
                    return
            }
        }
        catch{
            debugPrint("bad request")
        }
    }
}


