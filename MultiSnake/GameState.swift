//
// Created by Frank Nguyen on 12/7/22.
//

import Foundation

struct GameState{
    var boardCol = 50
    var boardRow = 25
    var playerSocketIDs: [String] = []
    var playerIDs: [String] = []
    var roomid = ""
    var roomPlayerNum = 2
    var frame = 0
    var framerate = 15
    var debug = false
    var food: [Int] = []
    var nextFood: [Int] = []
    var foodCounter = 0
    var snakes: [Snake] = []
    var gameFinished = false
    var deuce = false
    var matchFinished = false

    init(JSON: Data){
        if let serializedJSON = try? JSONSerialization.jsonObject(with: JSON){

        }

    }
}

struct Snake{
    var body_coords: [[Int]] = []
    var direction = 1
    var skin_head: [String] = []
    var skin_body_straight: [String] = []
    var skin_body_angle: [String] = []
    var skin_tail: [String] = []
    var received_input = true
    var advantage_point = 0
    var game_score = 0

    init(direction: Int, game_score: Int){
        self.direction = direction
        self.game_score = game_score
    }
}