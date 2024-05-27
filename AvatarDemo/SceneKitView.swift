//
//  SceneKitView.swift
//  AvatarDemo
//
//  Created by Philip Rehker on 16.05.24.
//

/*import Foundation
import SwiftUI
import SceneKit

struct SceneKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView()
        scnView.autoenablesDefaultLighting = true

        // Create a new scene
        let scene = SCNScene()
        scnView.scene = scene
        
        //Set up background color
        scnView.backgroundColor = UIColor.white

        // Setup the camera
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 1.5, z: 1.2)
        scene.rootNode.addChildNode(cameraNode)

        /* Lighting
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)*/

        // Load the avatar
        loadAvatar(into: scene)

        return scnView
    }

    func updateUIView(_ uiView: SCNView, context: Context) {
        // Update the view if needed
    }

    func loadAvatar(into scene: SCNScene) {
        guard let avatarScene = SCNScene(named: "art.scnassets/Avatar.scn") else {
            print("Failed to load avatar")
            return
        }
        print("Sucessfully loaded avatar")
        
        // Print all node names in the scene
        avatarScene.rootNode.enumerateChildNodes { (node, stop) in
            print("Found node: \(node.name ?? "Unnamed")")
        }

        if let avatarNode = avatarScene.rootNode.childNode(withName: "Armature", recursively: true) {
            print("Avatar added to scene")
            scene.rootNode.addChildNode(avatarNode)
            avatarNode.position = SCNVector3(x: 0, y: 0, z: 0)
            animateMouthOpen(node: avatarNode)
        }
    }
    
    func animateMouthOpen(node: SCNNode) {
        if let blinkAnimation = CABasicAnimation(keyPath: "Wolf3D_Head.eyeBlinkLeft") {
            print("Animation found and created")
            
            blinkAnimation.fromValue = 0.0
            blinkAnimation.toValue = 1.0
            blinkAnimation.duration = 0.5
            blinkAnimation.autoreverses = true
            blinkAnimation.repeatCount = 50
            node.addAnimation(blinkAnimation, forKey: <#T##String?#>)
        } else {
            print("Animation not found")
        }
    }
}


#Preview {
    SceneKitView()
}
*/
