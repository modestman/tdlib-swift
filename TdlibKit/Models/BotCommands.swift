//
//  BotCommands.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of bot commands
public struct BotCommands: Codable {

    /// Bot's user identifier
    public let botUserId: Int

    /// List of bot commands
    public let commands: [BotCommand]


    public init(
        botUserId: Int,
        commands: [BotCommand]
    ) {
        self.botUserId = botUserId
        self.commands = commands
    }
}

