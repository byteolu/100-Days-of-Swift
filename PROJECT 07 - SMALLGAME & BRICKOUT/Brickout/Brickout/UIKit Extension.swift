//
//  UIKit Extension.swift
//  Brickout
//
//  Created by 诸葛俊伟 on 6/17/16.
//  Copyright © 2016 Stanford University. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random(_ max: Int) -> CGFloat {
        return CGFloat(arc4random() % UInt32(max))
    }
}

extension UIColor {
    class var random: UIColor {
        switch arc4random() % 5 {
        case 0: return UIColor.green
        case 1: return UIColor.cyan
        case 2: return UIColor.lightGray
        case 3: return UIColor.orange
        case 4: return UIColor.yellow
        default: return UIColor.darkGray
        }
    }
}

extension CGRect {
    var mid: CGPoint { return CGPoint(x: midX, y: midY) }
    var upperLeft: CGPoint { return CGPoint(x: minX, y: minY) }
    var lowerLeft: CGPoint { return CGPoint(x: minX, y: maxY) }
    var upperright: CGPoint { return CGPoint(x: maxX, y: minY) }
    var lowerright: CGPoint { return CGPoint(x: maxX, y: maxY) }
    
    init(center: CGPoint, size: CGSize) {
        let upperLeft = CGPoint(x: center.x - size.width/2, y: center.y - size.height/2)
        self.init(origin: upperLeft, size: size)
    }
}

extension UIView {
    func hitTest(_ p: CGPoint) -> UIView? {
        return hitTest(p, with: nil)
    }
}

extension UIBezierPath {
    class func lineFrom(_ from: CGPoint, to: CGPoint) -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: from)
        path.addLine(to: to)
        return path
    }
}
