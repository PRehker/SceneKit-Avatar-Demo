//
//  SceneKitView.swift
//  AvatarDemo
//
//  Created by Philip Rehker on 16.05.24.
//

import Foundation
import SwiftUI
import SceneKit

struct SceneKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView()
        scnView.allowsCameraControl = true
        scnView.autoenablesDefaultLighting = true
        scnView.backgroundColor = UIColor.black

        // Create a new scene
        let scene = SCNScene()
        scnView.scene = scene
        
        //Set up background color
        scnView.backgroundColor = UIColor.white

        // Setup the camera
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 10)
        scene.rootNode.addChildNode(cameraNode)

        // Lighting
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)

        // Load the avatar
        loadAvatar(into: scene)

        return scnView
    }

    func updateUIView(_ uiView: SCNView, context: Context) {
        // Update the view if needed
    }

    /*func loadAvatar(into scene: SCNScene) {
        guard let avatarScene = SCNScene(named: "art.scnassets/Avatar.dae") else {
            print("Failed to load avatar")
            return
        }

        if let avatarNode = avatarScene.rootNode.childNode(withName: "avatar", recursively: true) {
            scene.rootNode.addChildNode(avatarNode)
            avatarNode.position = SCNVector3(x: 0, y: 0, z: 0)
        }
    }*/
    func loadAvatar(into scene: SCNScene) {
        let cube = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0)
        let cubeNode = SCNNode(geometry: cube)
        cubeNode.position = SCNVector3(x: 0, y: 0, z: 0)
        scene.rootNode.addChildNode(cubeNode)
        print("Cube node added to scene")
    }
}


#Preview {
    SceneKitView()
}
