//
//  ContentView.swift
//  MultiSnake
//
//  Created by Frank Nguyen on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    let socket = SocketInterface().getSocket()
    var gameState =

    var body: some View {
        ZStack{
            Color.black.opacity(1.0)
            Group{//Snake
                for iter in 0..
            }
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//            Button("Button") {
//                socket.sendEchoTest()
//            }
//            ZStack
//            LazyVGrid(columns: [GridItem(.fixed(200))]) {
//                Rectangle()
//                Rectangle()
//                Rectangle()
//                Rectangle()
//
//                Text("Placeholder")
//                Text("Placeholder")
//            }
//        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
