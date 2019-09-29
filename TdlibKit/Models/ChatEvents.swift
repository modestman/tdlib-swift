//
//  ChatEvents.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of chat events
public struct ChatEvents: Codable {

    /// List of events
    public let events: [ChatEvent]


    public init (events: [ChatEvent]) {
        self.events = events
    }
}

