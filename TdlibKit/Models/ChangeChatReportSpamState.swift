//
//  ChangeChatReportSpamState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Reports to the server whether a chat is a spam chat or not. Can be used only if ChatReportSpamState.can_report_spam is true. After this request, ChatReportSpamState.can_report_spam becomes false forever
public struct ChangeChatReportSpamState: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// If true, the chat will be reported as spam; otherwise it will be marked as not spam
    public let isSpamChat: Bool


    public init (
        chatId: Int64,
        isSpamChat: Bool) {

        self.chatId = chatId
        self.isSpamChat = isSpamChat
    }
}

