//
//  GetChatReportSpamState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information on whether the current chat can be reported as spam
public struct GetChatReportSpamState: Codable {

    /// Chat identifier
    public let chatId: Int64


    public init (chatId: Int64) {
        self.chatId = chatId
    }
}

