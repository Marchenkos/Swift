//
//  Scoreboard.swift
//  sport_scoreboard
//
//  Created by Kseniya Marchanka on 12/15/21.
//

import Foundation

class Scoreboard<G: GameProtocol> {
    var game: G?;

    init(_ game: G?) {
        self.game = game;
    }
    
    func startGame(handleScore: () -> Void) {
        if let game = self.game {
            print("\(game.gameName) was started.")
            handleScore();
        } else {
            print("Game is not provided!");
        }
    }
}


