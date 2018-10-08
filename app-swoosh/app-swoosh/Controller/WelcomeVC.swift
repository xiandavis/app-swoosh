//
//  ViewController.swift
//  app-swoosh
//
//  Created by Christian Davis on 9/28/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    //    @IBOutlet weak var swoosh: UIImageView! /* COMMENT */ Debugging: setValue forUndefinedKey
    //    @IBOutlet weak var bgImg: UIImageView! /* COMMENT */ Mark demonstrates by deleting these IBOutlets [that were added before we handled them in the storyboard with auto layout, therefore we no longer need these statements] we get the error message: setValue forUndefinedKey. This is because you have to click main.storyboard in Proj Nav, in the Document Outline / View Controller Scene (now called WelcomeVC Scene), control-click [the same VC you deleted the IBOutlets from (VC has the yellow circle in Doc Outline), WelcomeVC] and click 'x's next to outlets showing yellow alert triangle.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width / 2, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.height) // view.frame is view's position & size. Mark demonstrates old way of positioning elements on screen--The next lesson will deprecate this, Autolayout.
        
        bgImg.frame = view.frame */
        
        
    }
    
    @IBAction func unwindFromSkillVC(unwindSegueXian: UIStoryboardSegue) { // Mark named func this; could have been anything, just as func parameter name could be (added Xian to it)
        
    }


}

