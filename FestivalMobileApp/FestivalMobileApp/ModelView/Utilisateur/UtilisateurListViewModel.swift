
//  UtilisateurListViewModel.swift
//  FestivalMobileApp
//
//  Created by etud on 23/03/2023.
//

import Foundation

class UtilisateurListViewModel : ObservableObject, UtilisateurModelObserver {
    
    @Published var users : [UtilisateurViewModel]
    
    init(users: [UtilisateurViewModel]) {
        self.users = users
    }
    
    func change(name: String) {
        self.objectWillChange.send()
    }
    
    func remove(atOffsets indexSet : IndexSet) {
        self.users.remove(atOffsets: indexSet)
        self.objectWillChange.send()
    }
    
    func move(fromOffsets indexSet : IndexSet, toOffset index: Int) {
        self.users.move(fromOffsets: indexSet, toOffset: index)
        self.objectWillChange.send()
    }
    @Published var state : UtilisateurListState = .ready {
        didSet {
            switch state {
            case .loadingUtilisateurs:
                debugPrint("state loading UtilisateurListVM")
            case .loadedUtilisateurs(let newUsers):
                //transformation UserDTO en UserViewModel
                self.users = newUsers.map{ user in UtilisateurViewModel(user: user)}
                debugPrint("jai charge les donnees")
                self.state = .ready
            case .error:
                debugPrint("error")
                self.state = .ready
            case .ready:
                debugPrint("TrackViewModel: ready state")
                debugPrint("--------------------------------------")
            default:
                break
            }
        }
    }
}
