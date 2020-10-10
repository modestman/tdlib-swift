//
//  SetChatClientData.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes application-specific data associated with a chat
public struct SetChatClientData: Codable {

    /// Chat identifier
    public let chatId: Int64

    /// New value of client_data
    public let clientData: String


    public init (
        chatId: Int64,
        clientData: String) {

        self.chatId = chatId
        self.clientData = clientData
    }
}

