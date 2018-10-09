//
//  Player.swift
//  app-swoosh
//
//  Created by Christian Davis on 10/9/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import Foundation

struct Player { // we access this from the LeagueVC.swift controller file
    var desiredLeague: String! // Mark originally had as optionals (?) but decided these variables are guaranteed to have values so changed to implicitly unwrapped optional (!)
    var selectedSkillLevel: String!
}
