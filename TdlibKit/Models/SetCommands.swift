//
//  SetCommands.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sets the list of commands supported by the bot; for bots only
public struct SetCommands: Codable {

    /// List of the bot's commands
    public let commands: [BotCommand]


    public init (commands: [BotCommand]) {
        self.commands = commands
    }
}

