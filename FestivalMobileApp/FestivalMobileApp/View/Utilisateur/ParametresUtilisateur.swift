//
//  ParametresUtilisateur.swift
//  FestivalMobileApp
//
//  Created by etud on 21/03/2023.
//

import SwiftUI

struct ParametresUtilisateur: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, Paramètres!")
            Spacer()
            FooterUtilisateur(trackView: "Parametres")
        }
    }
}

struct ParametresUtilisateur_Previews: PreviewProvider {
    static var previews: some View {
        ParametresUtilisateur()
    }
}
