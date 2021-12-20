//
//  Game.swift
//  sport_scoreboard
//
//  Created by Kseniya Marchanka on 12/15/21.
//

import Foundation

protocol GameProtocol {
    var gameName: String { get }
}

struct Volleyball: GameProtocol {
    var gameName: String;
    var teams: [Player] = [];
    
    init(gameName name: String) {
        self.gameName = name;
    }
    
    func isPlayersRecruited() -> Bool {
        return self.teams.count == 2;
    }
    
    mutating func addPlayer(_ newPlayer: Player) {
        if (self.isPlayersRecruited() && self.teams.contains(newPlayer)) {
            print("Max number of players reached or this player is already exist");
        } else {
            self.teams.append(newPlayer);
        }
    }
    
    mutating func removePlayer(_ player: Player) {
        let updatedTeam = self.teams.filter { $0 != player }

        self.teams = updatedTeam;
    }
    
    func handleScore() {
        let scoreTeam1 = Int.random(in: 1..<10);
        let scoreTeam2 = Int.random(in: 1..<10);
        
        let winner = scoreTeam1 > scoreTeam2 ? teams[0] : teams[1];
        
        print("Team \(winner.name) wins!");
    }
}

struct Tennis: GameProtocol {
    var gameName: String;
    var teams: [Player] = [];
    
    init(gameName name: String) {
        self.gameName = name;
        self.teams = [Player("team_1"), Player("TBT", "tim_ka")];
    }
    
    func handleScore() {
        var scoreTeam1 = 0;
        var scoreTeam2 = 0;

        for _ in 1...3 {
            scoreTeam1 += Int.random(in: 1..<100);
            scoreTeam2 += Int.random(in: 1..<100);
        }
        
        let winner = scoreTeam1 > scoreTeam2 ? teams[0] : teams[1];
        
        print("Team \(winner.name) wins!");
    }
}

var tennis = Tennis(gameName: "tennis");
var volleyball = Volleyball(gameName: "volleyball");
