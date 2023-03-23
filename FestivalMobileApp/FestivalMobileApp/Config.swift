//
//  config.swift
//  FestivalMobileApp
//
//  Created by etud on 22/03/2023.
//

import Foundation

struct Config {
    var url: String {
        get { return "https://green-kangaroo-vest.cyclic.app" }
    }
    
    var urlBenevole: String {
        get { return url + "/benevole" }
    }
    
    var urlFestival: String {
        get { return url + "/festival" }
    }
}
    
