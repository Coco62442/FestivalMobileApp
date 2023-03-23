//
//  StateFestival.swift
//  FestivalMobileApp
//
//  Created by etud on 22/03/2023.
//

import Foundation


enum StateFestival : CustomStringConvertible, Equatable {
    
    var description: String{
        switch self{
        case .ready:
            return "Ready"
        case let .error(message):
            return message
        case let .changingName(newname):
            return "Changing name in: \(newname)"
        }
    }
    
    case ready
    case changingName(String)
    case error(String)
    
}
