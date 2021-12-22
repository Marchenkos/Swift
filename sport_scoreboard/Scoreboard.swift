import Foundation

class Scoreboard<G: GameProtocol> {
    var game: G

    init(_ game: G) {
        self.game = game
    }
    
    func startGame() {
        var winner: String? = nil;
    
        print("\(game.gameName) was started.")
        while winner == nil {
            let randomTeamIndex = Int.random(in: 0..<2);

            handleGoal(randomTeamIndex);
            winner = game.checkWinner();
        }
        
        print("\(game.gameName.getEmoji()) \(winner!) win!")
    }
    
    func handleGoal(_ randomTeamIndex: Int) {
        game.handleGoal(teamIndex: randomTeamIndex);
    }
}


