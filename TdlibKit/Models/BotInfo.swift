//
//  BotInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Provides information about a bot and its supported commands
public struct BotInfo: Codable {

    /// A list of commands supported by the bot
    public let commands: [BotCommand]

    public let description: String


    public init(
        commands: [BotCommand],
        description: String
    ) {
        self.commands = commands
        self.description = description
    }
}

