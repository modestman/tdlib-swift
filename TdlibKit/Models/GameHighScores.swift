//
//  GameHighScores.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of game high scores
public struct GameHighScores: Codable {

    /// A list of game high scores
    public let scores: [GameHighScore]


    public init (scores: [GameHighScore]) {
        self.scores = scores
    }
}

