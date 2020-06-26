//
//  GetChatStatisticsGraph.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Loads asynchronous or zoomed in chat statistics graph
public struct GetChatStatisticsGraph: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// The token for graph loading
    public let token: String

    /// X-value for zoomed in graph or 0 otherwise
    public let x: Int64


    public init (
        chatId: Int64,
        token: String,
        x: Int64) {

        self.chatId = chatId
        self.token = token
        self.x = x
    }
}

