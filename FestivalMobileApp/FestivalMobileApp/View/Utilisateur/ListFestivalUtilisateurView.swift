//
//  ListFestivalUtilisateurView.swift
//  FestivalMobileApp
//
//  Created by etud on 22/03/2023.
//

import SwiftUI

struct ListFestivalUtilisateurView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            Text("Liste des Festivals :")
        //            List{
        //                ForEach (0..<festivalList.count, id : \.self){ index in
        //                    NavigationLink(destination : FestivalUIView(festival : festivalList[index])){
        //                        VStack{
        //                            HStack{
        //                                FestivalItemView(track: festivalList[index])
        //                            }
        //                            VStack{
        //                                Text(festivalList[index].collectionName)
        //                                Text(festivalList[index].releaseDate)
        //                            }.font(.footnote)
        //                        }
        //                    }
        //                }
        //                .onDelete { indexSet in
        //                    festivalList.remove(atOffsets: indexSet)
        //                }
        //                .onMove{ indexSet, index in
        //                    festivalList.move(fromOffsets: indexSet, toOffset: index)
        //                }
        //            }
    }
}

struct ListFestivalUtilisateurView_Previews: PreviewProvider {
    static var previews: some View {
        ListFestivalUtilisateurView()
    }
}
