//
//  GameScene.swift
//  SpriteKitDemo
//
//  Created by Bryan A Bolivar M on 7/30/17.
//  Copyright © 2017 Bryan A Bolivar M. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {

    let dogSpriteNode = SKSpriteNode(imageNamed: "Run0")
    var dogFrames = [SKTexture]()

    override func didMove(to view: SKView) {
        dogSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(dogSpriteNode)

        let textureAtlas = SKTextureAtlas(named: "Dog Frames")

        for index in 0..<textureAtlas.textureNames.count {
            let textureName = "Run\(index)"
            dogFrames.append(textureAtlas.textureNamed(textureName))
        }

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if dogSpriteNode.hasActions() {
            dogSpriteNode.removeAllActions()
        } else {
            dogSpriteNode.run(SKAction.repeatForever(SKAction.animate(with: dogFrames, timePerFrame: 0.1)))
        }

    }

  }
