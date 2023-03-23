//
//  Footer.swift
//  FestivalMobileApp
//
//  Created by etud on 21/03/2023.
//

import SwiftUI
import Foundation

struct FooterUtilisateur: View {
    
    @State var trackView : String
    
    var body: some View {
        NavigationStack {
            HStack{
                
                Spacer()
                
                if trackView == "HomePage" {
                    Image(systemName: "house.circle.fill")
                                    .imageScale(.large)
                                    .foregroundColor(.accentColor)
                }
                else {
                    Image(systemName: "house.circle")
                                    .imageScale(.large)
                                    .foregroundColor(.accentColor)
                }
                
                Spacer()
                
                if trackView == "Parametres" {
                    Image(systemName: "gear.circle.fill")
                                    .imageScale(.large)
                                    .foregroundColor(.accentColor)
                    
                }
                else {
                    Image(systemName: "gear.circle")
                                    .imageScale(.large)
                                    .foregroundColor(.accentColor)
                }
                
                Spacer()
                
            }
        }
    }
}
