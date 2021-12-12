//
//  GameHighScore.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains one row of the game high score table
public struct GameHighScore: Codable {

    /// Position in the high score table
    public let position: Int

    /// User score
    public let score: Int

    /// User identifier
    public let userId: Int64


    public init(
        position: Int,
        score: Int,
        userId: Int64
    ) {
        self.position = position
        self.score = score
        self.userId = userId
    }
}

