//
//  PlayerCarrousselView.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 06/10/23.
//

import SwiftUI

struct PlayerCarrousselView: View {
    var players: [Player]
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                Image(player.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct PlayerCarrousselView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCarrousselView(players: Samples.players)
            .frame(width: 290, height: 180)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
