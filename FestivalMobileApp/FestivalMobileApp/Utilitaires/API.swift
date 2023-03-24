//
//  API.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

class API {
    
    static var API = ""
/*
    static func zoneDAO() -> ZoneDAO {
        return ZoneDAO(api: self.API)
    }

    static func creneauDAO() -> CreneauDAO {
        return CreneauDAO(api: self.API)
    }
*/
    static func utilisateurIntent() -> UtilisateurIntent {
        return UtilisateurIntent(api: self.API)
    }

    static func festivalDAO() -> FestivalDAO {
        return FestivalDAO(api: self.API)
    }

    static func jourDAO() -> JourDAO {
        return JourDAO(api: self.API)
    }
}
