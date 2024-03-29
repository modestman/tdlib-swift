//
//  GetChatMessageCalendar.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about the next messages of the specified type in the chat splitted by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset"
public struct GetChatMessageCalendar: Codable {

    /// Identifier of the chat in which to return information about messages
    public let chatId: Int64?

    /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention and searchMessagesFilterUnreadMention are unsupported in this function
    public let filter: SearchMessagesFilter?

    /// The message identifier from which to return information about messages; use 0 to get results from the last message
    public let fromMessageId: Int64?


    public init(
        chatId: Int64?,
        filter: SearchMessagesFilter?,
        fromMessageId: Int64?
    ) {
        self.chatId = chatId
        self.filter = filter
        self.fromMessageId = fromMessageId
    }
}

