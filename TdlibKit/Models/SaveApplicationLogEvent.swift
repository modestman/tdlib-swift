//
//  SaveApplicationLogEvent.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Saves application log event on the server. Can be called before authorization
public struct SaveApplicationLogEvent: Codable {

    /// Optional chat identifier, associated with the event
    public let chatId: Int64

    /// The log event data
    public let data: JsonValue

    /// Event type
    public let type: String


    public init(
        chatId: Int64,
        data: JsonValue,
        type: String
    ) {
        self.chatId = chatId
        self.data = data
        self.type = type
    }
}

