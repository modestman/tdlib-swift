//
//  GetInlineGameHighScores.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
public struct GetInlineGameHighScores: Codable {

    /// Inline message identifier
    public let inlineMessageId: String?

    /// User identifier
    public let userId: Int64?


    public init(
        inlineMessageId: String?,
        userId: Int64?
    ) {
        self.inlineMessageId = inlineMessageId
        self.userId = userId
    }
}

