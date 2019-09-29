//
//  BotCommand.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents commands supported by a bot
public struct BotCommand: Codable {

    /// Text of the bot command
    public let command: String

    public let description: String


    public init (
        command: String,
        description: String) {

        self.command = command
        self.description = description
    }
}

