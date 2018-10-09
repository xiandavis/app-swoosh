//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Christian Davis on 10/8/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player! // implicitly unwrapped because we don't want code to run at all if there isn't a player
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player() // initialize struct, when view loads it will create new player
    }

    @IBAction func onNextTapped(_ sender: Any) {
//        if menWasSelected { // Mark demonstrates how you might choose different segues with if/else statement
        performSegue(withIdentifier: "skillVCSegue", sender: self) // IB segue (Interface Builder) doesn't require withIdentifier, but programmatic segue does
//        } else {
//            performSegue(withIdentifier: "womens", sender: self)
//        }
    }
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens") // Mark just came up with these strings to refer back to
    }
    @IBAction func onWomensTapped(_ sender: Any) { // Mark moved logic code from here and put it inside func selectLeague() below
        selectLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) { // Mark just came up with this func name, param name
        player.desiredLeague = leagueType // desiredLeague declared in Player.swift model file (opt-click var name above to see this)
        nextBtn.isEnabled = true // allows segue to 3rd VC to operate
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // prepare allows you to do things BEFORE the segue changes VCs. This is where you will pass data between VCs!
        if let skillVC = segue.destination as? SkillVC { // obj-oriented prog allows us to downcast destination obj to SkillVC because SkillVC inherits from UIViewController. This statement takes code from SkillVC and stores it in the skillVC constant.
            
            // Below statement assigns player data from this file to player in SkillVC file
            skillVC.player /* (player       from SkillVC file) */ =
                    player /* (player from THIS/LeagueVC file) */
            
        } // else if let otherVC {}... // Mark demonstrates if we had more than one segue
        
    }
}
