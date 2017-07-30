//
//  GameColors.swift
//  SpriteKitDemo
//
//  Created by Bryan A Bolivar M on 7/30/17.
//  Copyright © 2017 Bryan A Bolivar M. All rights reserved.
//

import UIKit

class GameColor: UIColor {
    static let nodeColor = UIColor.colorWith(redValue: 100, greenValue: 100, blueValue: 100, alpha: 1.0)
}

extension UIColor {
    static func colorWith(redValue: CGFloat, greenValue: CGFloat, blueValue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alpha)
    }
}
