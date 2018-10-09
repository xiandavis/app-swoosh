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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
