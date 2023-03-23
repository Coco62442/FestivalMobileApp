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
            debugPrint("bad url getUser")
            return
        }
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            debugPrint("data normal")
            debugPrint(data)
            let sdata = String(data: data, encoding: .utf8)!
            debugPrint("sdata")
            let httpresponse = response as! HTTPURLResponse
            debugPrint(httpresponse)
            if httpresponse.statusCode == 200{
                debugPrint("je suis conne")
                debugPrint("\(sdata)")
                guard let decoded : [UtilisateurDTO] = await JSONHelper.decode(data: data) else{
                    debugPrint("mauvaise récup données")
                    return
                }
                
                debugPrint("donneees decodeess")
                debugPrint(decoded)
                model.state = .loadedUtilisateurs(decoded)
                
            }
            else{
                debugPrint("error \(httpresponse.statusCode):\(HTTPURLResponse.localizedString(forStatusCode: httpresponse.statusCode))")
            }
        }
        catch{
            debugPrint("bad request")
        }
    }
}


