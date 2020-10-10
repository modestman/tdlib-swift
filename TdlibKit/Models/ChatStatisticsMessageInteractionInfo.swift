//
//  ChatStatisticsMessageInteractionInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains statistics about interactions with a message
public struct ChatStatisticsMessageInteractionInfo: Codable {

    /// Number of times the message was forwarded
    public let forwardCount: Int

    /// Message identifier
    public let messageId: Int64

    /// Number of times the message was viewed
    public let viewCount: Int


    public init (
        forwardCount: Int,
        messageId: Int64,
        viewCount: Int) {

        self.forwardCount = forwardCount
        self.messageId = messageId
        self.viewCount = viewCount
    }
}

