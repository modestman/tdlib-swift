//
//  ToggleGroupCallIsMyVideoPaused.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Toggles whether current user's video is paused
public struct ToggleGroupCallIsMyVideoPaused: Codable {

    /// Group call identifier
    public let groupCallId: Int?

    /// Pass true if the current user's video is paused
    public let isMyVideoPaused: Bool?


    public init(
        groupCallId: Int?,
        isMyVideoPaused: Bool?
    ) {
        self.groupCallId = groupCallId
        self.isMyVideoPaused = isMyVideoPaused
    }
}

