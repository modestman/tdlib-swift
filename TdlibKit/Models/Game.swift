//
//  Game.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a game
public struct Game: Codable {

    /// Game animation; may be null
    public let animation: Animation?

    public let description: String

    /// Game ID
    public let id: String

    /// Game photo
    public let photo: Photo

    /// Game short name. To share a game use the URL https://t.me/{bot_username}?game={game_short_name}
    public let shortName: String

    /// Game text, usually containing scoreboards for a game
    public let text: FormattedText

    /// Game title
    public let title: String


    public init (
        animation: Animation?,
        description: String,
        id: String,
        photo: Photo,
        shortName: String,
        text: FormattedText,
        title: String) {

        self.animation = animation
        self.description = description
        self.id = id
        self.photo = photo
        self.shortName = shortName
        self.text = text
        self.title = title
    }
}

