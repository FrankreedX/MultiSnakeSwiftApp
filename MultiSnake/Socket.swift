//
//  Socket.swift
//  MultiSnake
//
//  Created by Frank Nguyen on 12/6/22.
//

import Foundation
import SocketIO

struct SocketInterface{
    let manager = SocketManager(socketURL: URL(string: "http://localhost:3000/server.html")!, config: [.compress])
    let socket:SocketIOClient
    init(){
        socket = manager.defaultSocket
        
        socket.on(clientEvent: .connect) {data, ack in
            print("socket connected")
        }

        addHandlers()
        socket.connect()
    }

    func sendEchoTest(){
        socket.emit("echoTest", "from xcode!")
    }

    func getSocket() -> SocketIOClient {
        return socket
    }
    
    func addHandlers(){
        socket.on("snake update") { dataArray, ack in
            print("snake update")
        }
        socket.on("initial countdown") { dataArray, ack in
            print("initial countdown")
        }
        socket.on("game ended") { dataArray, ack in
            print("game ended")
        }
        socket.on("game score") { dataArray, ack in
            print("game score")
        }
        socket.on("match ended") { dataArray, ack in
            print("match ended")
        }
        socket.on("room created") { dataArray, ack in
            print("room created")
        }
        socket.on("get input") { dataArray, ack in
            print("get input")
        }
        socket.on("echo"){ dataArray, ack in
            print(dataArray)
        }
    }
}
