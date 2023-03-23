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
            /*var requete = URLRequest(url: url)
            requete.httpMethod = "GET"
            //append a value to a field
            requete.addValue("application/json", forHTTPHeaderField: "Content-Type")
             */
            //set (replace) a value to a field
            //requete.setValue(<#T##value: String?##String?#>, forHTTPHeaderField: <#T##String#>)
            /*
            guard let encoded = await JSONHelper.encode(data: self.user) else {
                print("pb encodage")
                return
            }
            let (data, response) = try await URLSession.shared.upload(for: requete, from: encoded)*/
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
    }}


