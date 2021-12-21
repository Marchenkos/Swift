import Foundation

class Team {
    var name: String
    var players: [Player] = []

    init(_ name: String) {
        self.name = name
    }
    
    func generateTeam() {
        self.players = [Player("generated_team_1"), Player("generated_team_2", "tim_ka")]
    }
}
