//
//  GetChats.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an ordered list of chats. Chats are sorted by the pair (order, chat_id) in decreasing order. (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed 64-bit number 9223372036854775807 == 2^63 - 1). For optimal performance the number of returned chats is chosen by the library
public struct GetChats: Codable {

    /// The maximum number of chats to be returned. It is possible that fewer chats than the limit are returned even if the end of the list is not reached
    public let limit: Int

    /// Chat identifier to return chats from
    public let offsetChatId: Int64

    /// Chat order to return chats from
    public let offsetOrder: TdInt64


    public init (
        limit: Int,
        offsetChatId: Int64,
        offsetOrder: TdInt64) {

        self.limit = limit
        self.offsetChatId = offsetChatId
        self.offsetOrder = offsetOrder
    }
}

