//
//  background.swift
//  carRacing
//
//  Created by lisa gathard on 12/28/17.
//  Copyright © 2017 joeythaman. All rights reserved.
//

import Foundation
import SpriteKit

class Background: SKNode {
    
    private var lineWidth:CGFloat = 3
    private var width: CGFloat
    private var height: CGFloat
    
    init(w:CGFloat,h:CGFloat) {
        width = w
        height = h
        super.init()
        for i in 0...Int(width/gap)+1 {//for i in 0...(Int((height)/gap)+1) {
            let line = SKShapeNode(rectOf: CGSize(width: lineWidth, height: height))
            line.position = CGPoint(x:gap*CGFloat(i),y:height/2)
            line.fillColor = UIColor.white
            line.alpha = 0.5
            self.addChild(line)
        }
        
        for i in 0 ... Int(height/gap)+1 {
            let line = SKShapeNode(rectOf: CGSize(width: width, height: lineWidth))
            line.position = CGPoint(x:width/2,y:gap*CGFloat(i))
            line.fillColor = UIColor.white
            line.alpha = 0.5
            self.addChild(line)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
