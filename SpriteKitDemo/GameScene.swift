//
//  GameScene.swift
//  SpriteKitDemo
//
//  Created by Bryan A Bolivar M on 7/30/17.
//  Copyright © 2017 Bryan A Bolivar M. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {

    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: GameColor.nodeColor, size: CGSize(width: 200.0, height: 200.0))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))

    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        myFirstSpriteNode.position = CGPoint(x: frame.midX , y: frame.midY)
        myFirstSpriteNode.anchorPoint = CGPoint.zero
        addChild(myFirstSpriteNode)

        myFirstSpriteNode.zPosition = 1
        myFirstTexturedSpriteNode.size = CGSize(width: 100, height: 100)
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)

        blueBox.zPosition = 2
        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width/2, y:myFirstSpriteNode.size.width/2)
        myFirstSpriteNode.addChild(blueBox)
    }

  }
