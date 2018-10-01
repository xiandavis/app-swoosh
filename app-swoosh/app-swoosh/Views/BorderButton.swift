//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Christian Davis on 9/28/18.
//  Copyright © 2018 xianapps. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    // a border is one of the default layers in a UIView, so we will NOT be overriding draw(). You would only do so to draw something like stars* in your button for example --Mark Price
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
