//
//  ThemeSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes theme settings
public struct ThemeSettings: Codable {

    /// Theme accent color in ARGB format
    public let accentColor: Int

    /// If true, the freeform gradient fill needs to be animated on every sent message
    public let animateMessageFill: Bool

    /// The background to be used in chats; may be null
    public let background: Background?

    /// The fill to be used as a background for outgoing messages
    public let messageFill: BackgroundFill


    public init(
        accentColor: Int,
        animateMessageFill: Bool,
        background: Background?,
        messageFill: BackgroundFill
    ) {
        self.accentColor = accentColor
        self.animateMessageFill = animateMessageFill
        self.background = background
        self.messageFill = messageFill
    }
}

