//
//  DeleteCommands.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes commands supported by the bot for the given user scope and language; for bots only
public struct DeleteCommands: Codable {

    /// A two-letter ISO 639-1 country code or an empty string
    public let languageCode: String?

    /// The scope to which the commands are relevant; pass null to delete commands in the default bot command scope
    public let scope: BotCommandScope?


    public init(
        languageCode: String?,
        scope: BotCommandScope?
    ) {
        self.languageCode = languageCode
        self.scope = scope
    }
}

