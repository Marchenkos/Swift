//
//  ViewController.swift
//  sport_scoreboard
//
//  Created by Kseniya Marchanka on 12/15/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        volleyball.addPlayer(player1);
        volleyball.addPlayer(player2);

        let tennisSession = Scoreboard(tennis);
        tennisSession.startGame() {
            tennis.handleScore();
        };

        let volleyballSession = Scoreboard(volleyball);
        
        volleyballSession.startGame() {
            volleyball.handleScore();
        };
    }
}

