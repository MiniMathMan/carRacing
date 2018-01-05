//
//  joystick.swift
//  carRacing
//
//  Created by lisa gathard on 12/31/17.
//  Copyright © 2017 joeythaman. All rights reserved.
//

import Foundation
import SpriteKit

class joystick: SKShapeNode {
    override init() {
        super.init()
        self.rect rectOf: CGSize(width:screenWidth/3,height:screenHeight/3), cornerRadius: CGFloat(screenWidth/9))
        //super.init(rectOf: CGSize(width: screenWidth/3, height: screenHeight/3), cornerRadius: CGFloat(1))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
