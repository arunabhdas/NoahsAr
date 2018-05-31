//
//  SecondViewController.swift
//  NoahsAr
//
//  Created by Das on 5/31/18.
//  Copyright © 2018 arunabhdas. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class SecondViewController: UIViewController, ARSCNViewDelegate {
	@IBOutlet weak var sceneView: ARSCNView!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		
		// Set the view's delegate
		self.sceneView.delegate = self
		
		// Show statistics such as fps and timing information
		self.sceneView.showsStatistics = true
		
		// Create a new scene
		// let scene = SCNScene(named: "art.scnassets/hoop.scn")!
		
		// self.sceneView.scene = scene

    }

	func addBackboard() {
		guard let backboardScene = SCNScene(named: "art.scnassets/hoop.scn") else {
			return
		}
		
		guard let backboardNode = backboardScene.rootNode.childNode(withName: "backboard", recursively: false) else {
			return
		}
		
		backboardNode.position = SCNVector3(x: 0, y: 0.0, z: 0.0)
		
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		// Create a session configuration
		let configuration = ARWorldTrackingConfiguration()
		
		// Run the view's session
		sceneView.session.run(configuration)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		// Pause the view's session
		sceneView.session.pause()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Release any cached data, images, etc that aren't in use.
	}
    
	// MARK: - ARSCNViewDelegate
	
	/*
	// Override to create and configure nodes for anchors added to the view's session.
	func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
	let node = SCNNode()
	
	return node
	}
	*/
	
	func session(_ session: ARSession, didFailWithError error: Error) {
		// Present an error message to the user
		
	}
	
	func sessionWasInterrupted(_ session: ARSession) {
		// Inform the user that the session has been interrupted, for example, by presenting an overlay
		
	}
	
	func sessionInterruptionEnded(_ session: ARSession) {
		// Reset tracking and/or remove existing anchors if consistent tracking is required
		
	}

}
