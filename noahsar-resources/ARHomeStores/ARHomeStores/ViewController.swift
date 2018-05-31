//
//  ViewController.swift
//  ARHomeStores
//
//  Created by Gabriel Abraham on 10/09/2017.
//  Copyright © 2017 Gabriel Abraham. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    @IBOutlet weak var deleteBtn: UIButton!
    @IBOutlet weak var rightRotation: UIButton!
    @IBOutlet weak var leftRotation: UIButton!
    
    var chosenNode = SCNNode()
    let myItem  = ItemList()
   //  var planes = [OverlayPlane]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = false
        
        // Create a new scene
        let scene = SCNScene()
        
        // Set the scene to the view
        sceneView.scene = scene
      
        registerGestureRecognizer()
    }
    
    
    func registerGestureRecognizer(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        sceneView.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(gestureRecognizer: UIGestureRecognizer){
        
        let sceneLocation = gestureRecognizer.view as! ARSCNView
        let touchLocation = gestureRecognizer.location(in: sceneLocation)
        let hitResult = self.sceneView.hitTest(touchLocation, types:[.existingPlaneUsingExtent, .estimatedHorizontalPlane])
        
        if hitResult.count > 0{
            guard let hitTestResult = hitResult.first else{
                return
            }
            addItem(hitTestResult: hitTestResult)
            
        }
    }

    func addItem(hitTestResult: ARHitTestResult){
        
        let itemNode = chosenNode
        let worldPos = hitTestResult.worldTransform
        itemNode.position = SCNVector3(x: worldPos.columns.3.x,y: worldPos.columns.3.y,z: worldPos.columns.3.z)
        
        sceneView.scene.rootNode.addChildNode(itemNode)
    }
    
    
    func hiddenButtons(){
        deleteBtn.isHidden = false
        leftRotation.isHidden = false
        rightRotation.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal

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
    
    @IBAction func chairBtn(_ sender: Any) {
        chosenNode = myItem.addChair()
        hiddenButtons()
    }
    
    @IBAction func tableBtn(_ sender: Any) {
        chosenNode = myItem.addTable()
        hiddenButtons()
    }
    
    @IBAction func vaseBtn(_ sender: Any) {
        chosenNode = myItem.addVase()
        hiddenButtons()
    }
    
    @IBAction func lampBtn(_ sender: Any) {
        chosenNode = myItem.addLamp()
        hiddenButtons()
    }
    @IBAction func cupBtn(_ sender: Any) {
        chosenNode = myItem.addCup()
          hiddenButtons()
    }
    
    @IBAction func actualLeftRotation(_ sender: Any) {
        let rotate = SCNAction.rotateBy(x: 0, y: CGFloat(0.05 * Double.pi), z: 0, duration: 0.1)
        chosenNode.runAction(rotate)
    }
    
    @IBAction func ActualRightRotation(_ sender: Any) {
        let rotate = SCNAction.rotateBy(x:0, y: CGFloat(-0.05 * Double.pi), z: 0, duration: 0.1)
        chosenNode.runAction(rotate)
        sceneView.scene.rootNode.addChildNode(chosenNode)
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        chosenNode.removeFromParentNode()
       
    }
    
    
    
    
    
}
