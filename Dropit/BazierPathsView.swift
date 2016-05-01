//
//  BazierPathsView.swift
//  Dropit
//
//  Created by Anechka on 01.05.16.
//  Copyright © 2016 Anechka. All rights reserved.
//

import UIKit

class BazierPathsView: UIView {
    
    var bazierPath = [String:UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String) {
        bazierPath[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        for (_, path) in bazierPath {
            path.stroke()
        }
    }
}
