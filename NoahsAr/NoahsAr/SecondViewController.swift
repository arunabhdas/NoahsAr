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
	
		
		addBackboard()
		registerGestureRecognizer()
    }

	func addBackboard() {
		guard let backboardScene = SCNScene(named: "art.scnassets/hoop.scn") else {
			return
		}
		
		guard let backboardNode = backboardScene.rootNode.childNode(withName: "backboard", recursively: false) else {
			return
		}
		
		backboardNode.position = SCNVector3(x: 0, y: -3.0, z: -3.0)
		let physicsShape = SCNPhysicsShape(node: backboardNode, options: [SCNPhysicsShape.Option.type: SCNPhysicsShape.ShapeType.concavePolyhedron])
		let physicsBody = SCNPhysicsBody(type: .static, shape: physicsShape)
		backboardNode.physicsBody = physicsBody
		
		self.sceneView.scene.rootNode.addChildNode(backboardNode)
	
	}
	func horizontalAction(node: SCNNode) {
		
	}
	func registerGestureRecognizer() {
		let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
		sceneView.addGestureRecognizer(tap)
		
	}
	@objc func handleTap(gestureRecognizer: UIGestureRecognizer) {
		// scene view to be accessed
		guard let scnView = gestureRecognizer.view as? ARSCNView else {
			return
		}
		
		guard let centerPoint = scnView.pointOfView else {
			return
		}
		// transform matrix
		// the orientation
		// the location of the camera
		// orientation and location to determine the position of the camera and it's at this point in which we want the ball to be placed
		
		// access the point of view of the scene view ... the center point
		let cameraTransform = centerPoint.transform
		let cameraLocation = SCNVector3(x: cameraTransform.m41, y: cameraTransform.m42, z: cameraTransform.m43)
		let cameraOrientation = SCNVector3(x: -cameraTransform.m31, y: -cameraTransform.m32, z: -cameraTransform.m33)
		
		let cameraPosition = SCNVector3Make(cameraLocation.x + cameraOrientation.x, cameraLocation.y + cameraOrientation.y, cameraLocation.z + cameraOrientation.z)
		
		let ball = SCNSphere(radius: 0.15)
		let material = SCNMaterial()
		material.diffuse.contents = UIImage(named: "basketballSkin")
		ball.materials = [material]
		
		let ballNode = SCNNode(geometry: ball)
		ballNode.position = cameraPosition
		sceneView.scene.rootNode.addChildNode(ballNode)
		
		let physicsShape = SCNPhysicsShape(node: ballNode, options: nil)
		let physicsBody = SCNPhysicsBody(type: .dynamic, shape: physicsShape)
		
		ballNode.physicsBody = physicsBody
		let forceVector: Float = 6
		ballNode.physicsBody?.applyForce(SCNVector3(x: cameraPosition.x * forceVector, y: cameraPosition.y * forceVector, z: cameraPosition.z * forceVector), asImpulse: true)
		

		
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
