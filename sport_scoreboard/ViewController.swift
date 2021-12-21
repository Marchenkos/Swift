import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let volleyballTeam1 = Team("spirit")
        volleyballTeam1.generateTeam()
        
        let volleyballTeam2 = Team("squirrel")
        volleyballTeam2.generateTeam()
        
        let tennis = Tennis(gameName: GameName.tennis)
        let volleyball = Volleyball(gameName: GameName.volleyball)

        volleyball.addTeam(volleyballTeam1)
        volleyball.addTeam(volleyballTeam2)

        let tennisSession = Scoreboard(tennis)
        tennisSession.startGame()

        let volleyballSession = Scoreboard(volleyball)
        volleyballSession.startGame()
    }
}

