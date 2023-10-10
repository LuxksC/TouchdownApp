//
//  Samples.swift
//  Touchdown
//
//  Created by Lucas de Castro Souza on 06/10/23.
//

import Foundation

struct Samples {
    
    // MARK: - Player

    static var player: Player = Player(
        id: 1,
        image: "american-football-player-no1"
    )
    
    // MARK: - [Player]

    static var players: [Player] = [
        Player(
            id: 1,
            image: "american-football-player-no1"
        ),
        Player(
            id: 2,
            image: "american-football-player-no2"
        ),
        Player(
            id: 3,
            image: "american-football-player-no3"
        )
    ]
}
