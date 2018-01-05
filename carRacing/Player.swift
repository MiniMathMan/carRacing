//
//  player.swift
//  carRacing
//
//  Created by lisa gathard on 12/28/17.
//  Copyright © 2017 joeythaman. All rights reserved.
//

import SpriteKit
import Foundation

class Player: SKShapeNode {
    
    private var size: CGFloat = 10
    private var x: CGFloat = 0
    private var y: CGFloat = 0
    private var xVel:CGFloat = 0;
    private var yVel:CGFloat = 0;
    private var track: CGMutablePath = CGMutablePath()
    
    init(xPos:CGFloat,yPos:CGFloat) {
        
        x = xPos
        y = yPos
        let shape = CGMutablePath()
        shape.move(to: CGPoint(x:0,y:0))
        shape.addLine(to: CGPoint(x:-size,y:-size))
        shape.addLine(to: CGPoint(x:3*size,y:0))
        shape.addLine(to: CGPoint(x:-size,y:size))
        shape.addLine(to:CGPoint(x:0,y:0))
        super.init()
        self.position = CGPoint(x:x*gap,y:y*gap)
        self.path = shape
        self.strokeColor = UIColor.gray
        
        track.move(to:self.position)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
