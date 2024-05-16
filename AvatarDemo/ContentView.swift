//
//  ContentView.swift
//  AvatarDemo
//
//  Created by Philip Rehker on 15.05.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("3D Avatar with SceneKit")
                .font(.largeTitle)
                .padding()
            SceneKitView()
                .frame(height: 400)
        }
    }
}

#Preview {
    ContentView()
}
