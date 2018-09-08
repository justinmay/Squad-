//
//  ARHelperMethods.swift
//  PennAppsFall2018iOS
//
//  Created by Justin May on 9/8/18.
//  Copyright © 2018 Justin May. All rights reserved.
//

import Foundation
import ARKit
import SceneKit

class ARHelperMethods{
    
    static var list : [SCNNode] = []
    
    static func getLastElement() -> SCNNode{
        return self.list.removeLast()
    }
    class func addAnimation(node: SCNNode, position: SCNVector3) {
        let scalar = Float(15)
        let x = position.x * scalar
        let y = position.y * scalar
        let z = position.z * scalar
        print("\(x) + , + \(y) + , + \(z)")
        let animateOne = SCNAction.moveBy(x: CGFloat(x), y: CGFloat(y), z: CGFloat(z), duration: 5.0)
        let removeFrom = SCNAction.removeFromParentNode()
        let sequence = SCNAction.sequence([animateOne, removeFrom])
        //let rotateOne = SCNAction.rotateBy(x: 0, y: CGFloat(Float.pi), z: 0, duration: 10.0)
        //node.runAction(rotateOne)
        node.runAction(sequence)
        
    }
    
    
}

