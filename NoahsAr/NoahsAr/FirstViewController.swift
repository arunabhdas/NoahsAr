//
//  ViewController.swift
//  NoahsAr
//
//

import UIKit
import SceneKit
import ARKit

class FirstViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        // let scene = SCNScene(named: "art.scnassets/ship.scn")!
		let scene = SCNScene()
		
		// first
		let firstCube = SCNBox(width: 0.2, height: 0.2, length: 0.2, chamferRadius: 0.05)
		let firstCubeMaterial = SCNMaterial()
		firstCubeMaterial.diffuse.contents = Constants.Colors.nicheDarkBlue
		firstCube.materials = [firstCubeMaterial]
		let firstCubeNode = SCNNode(geometry: firstCube)
		firstCubeNode.position = SCNVector3(x: 0, y: 0.2, z: -1.0)
		
		
		// second
		let rectangle = SCNBox(width: 0.2, height: 0.2, length: 0.4, chamferRadius: 0.0)
		let rectangleMaterial = SCNMaterial()
		rectangleMaterial.diffuse.contents = Constants.Colors.nicheLightBlue
		rectangle.materials = [rectangleMaterial]
		let rectangleNode = SCNNode(geometry: rectangle)
		rectangleNode.position = SCNVector3(x: 0, y: 0.5, z: -1.0)
		
		
		let firstText = SCNText(string: "Das", extrusionDepth: 1)
		let textMaterial = SCNMaterial()
		textMaterial.diffuse.contents = Constants.Colors.classyPurple
		firstText.materials = [textMaterial]
		
        let textNode = SCNNode(geometry: firstText)
		textNode.position = SCNVector3(x: 0.0, y: -0.5, z: -1.0)
		
		scene.rootNode.addChildNode(firstCubeNode)
		scene.rootNode.addChildNode(rectangleNode)
		scene.rootNode.addChildNode(textNode)
		
        // Set the scene to the view
        sceneView.scene = scene
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
