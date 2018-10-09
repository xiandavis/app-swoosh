//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Christian Davis on 10/8/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
//        if menWasSelected { // Mark demonstrates how you might choose different segues with if/else statement
        performSegue(withIdentifier: "skillVCSegue", sender: self) // IB segue (Interface Builder) doesn't require withIdentifier, but programmatic segue does
//        } else {
//            performSegue(withIdentifier: "womens", sender: self)
//        }
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
