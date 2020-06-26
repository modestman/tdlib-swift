//
//  ChatFilterInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains basic information about a chat filter
public struct ChatFilterInfo: Codable {

    /// The icon name for short filter representation. One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work"
    public let iconName: String

    /// Unique chat filter identifier
    public let id: Int

    /// The title of the filter; 1-12 characters without line feeds
    public let title: String


    public init (
        iconName: String,
        id: Int,
        title: String) {

        self.iconName = iconName
        self.id = id
        self.title = title
    }
}

