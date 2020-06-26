//
//  ChatNearby.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a chat located nearby
public struct ChatNearby: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// Distance to the chat location in meters
    public let distance: Int


    public init (
        chatId: Int64,
        distance: Int) {

        self.chatId = chatId
        self.distance = distance
    }
}

