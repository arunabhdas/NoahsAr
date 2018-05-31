//
//  ItemList.swift
//  ARHomeStores
//
//  Created by Gabriel Abraham on 10/09/2017.
//  Copyright © 2017 Gabriel Abraham. All rights reserved.
//

import Foundation
import SceneKit


class ItemList{
    
    func addChair() -> SCNNode{
        
        let node = SCNNode()
        let scene = SCNScene(named: "art.scnassets/chair.scn")
        let nodeArray = scene!.rootNode.childNodes
        
        for childNode in nodeArray{
            node.addChildNode(childNode as SCNNode)
        }
        return node
    }
    
    func addCup() -> SCNNode{
        
        let node = SCNNode()
        let scene = SCNScene(named: "art.scnassets/cup.dae")
        let nodeArray = scene!.rootNode.childNodes
        
        for childNode in nodeArray{
            node.addChildNode(childNode as SCNNode)
        }
        return node
    }
    func addLamp() -> SCNNode{
        
        let node = SCNNode()
        let scene = SCNScene(named: "art.scnassets/lamp.dae")
        let lamp = scene?.rootNode.childNode(withName: "lamp", recursively: true)
        let nodeArray = scene!.rootNode.childNodes
        
        for childNode in nodeArray{
            node.addChildNode(childNode as SCNNode)
        }
        return lamp!
    }
    func addTable() -> SCNNode{
        
        let node = SCNNode()
        let scene = SCNScene(named: "art.scnassets/table.dae")
        let table = scene?.rootNode.childNode(withName:"table", recursively: true)
        let nodeArray = scene!.rootNode.childNodes
        
        for childNode in nodeArray{
            node.addChildNode(childNode as SCNNode)
        }
        return table!
    }
    func addVase() -> SCNNode{
        
        let node = SCNNode()
        let scene = SCNScene(named: "art.scnassets/flower.dae")
        let nodeArray = scene!.rootNode.childNodes
        
        for childNode in nodeArray{
            node.addChildNode(childNode as SCNNode)
        }
        return node
    }
    
    
    
    
    
}
