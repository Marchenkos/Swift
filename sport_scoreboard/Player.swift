//
//  Player.swift
//  sport_scoreboard
//
//  Created by Kseniya Marchanka on 12/15/21.
//

import Foundation

struct Player: Equatable {
    var name: String
    var nickname: String?
    
    init(_ name: String, _ nickname: String? = nil) {
        self.name = name;
        self.nickname = nickname;
    }
}

let player1 = Player("Squirrel");
let player2 = Player("spirit", "spt");

