import Foundation

enum GameName: String {
    case tennis = "tennis", volleyball, football
}

extension GameName {
    func getEmoji() -> String {
        switch self {
            case .tennis: return "🎾"
            case .volleyball: return "🏐"
            default: return "⁉️"
        }
    }
}

protocol GameProtocol {
    var gameName: GameName { get }
    var teams: [Team] { get }
    func handleGoal(teamIndex: Int)
    func handleScore() -> String?
}

class Volleyball: GameProtocol {
    var gameName: GameName
    var teams: [Team] = []
    var score: [String: Int] = [:]

    init(gameName name: GameName) {
        self.gameName = name
    }
    
    func addTeam(_ newTeam: Team) {
        if (self.teams.count < 2) {
            self.teams.append(newTeam)
            self.score[newTeam.name] = 0
        } else {
            print("Max number of players reached")
        }
    }
    
    func handleGoal(teamIndex: Int) {
        let teamName = self.teams[teamIndex].name
        let currentScore = self.score[teamName]

        if let currentScore = currentScore {
            self.score.updateValue(currentScore + 10, forKey: teamName)
        }
    }
    
    func handleScore() -> String? {
        let teamPoints = [Int](self.score.values);
                
        if teamPoints[0] - teamPoints[1] >= 2 {
            return teams[0].name;
        }
        
        if teamPoints[1] - teamPoints[0] >= 2 {
            return teams[1].name;
        }
        
        return nil;
    }
}

class Tennis: GameProtocol {
    var gameName: GameName
    var teams: [Team] = []
    var score: [String: Int] = [:]

    init(gameName name: GameName) {
        self.gameName = name
        self.teams = [Team("team_1"), Team("TBT")]
        self.score = [self.teams[0].name: 0, self.teams[1].name: 0]
    }
    
    func handleScore() -> String? {
        for (teamName, score) in self.score {
            if score == 5 {
                return teamName
            }
        }
        
        return nil
    }
    
    func handleGoal(teamIndex: Int) {
        let teamName = self.teams[teamIndex].name
        let currentScore = self.score[teamName]

        if let currentScore = currentScore {
            self.score.updateValue(currentScore + 1, forKey: teamName)
        }
    }
}
