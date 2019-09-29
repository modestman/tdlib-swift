//
//  RemoveBackground.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes background from the list of installed backgrounds
public struct RemoveBackground: Codable {

    /// The background indentifier
    public let backgroundId: String


    public init (backgroundId: String) {
        self.backgroundId = backgroundId
    }
}

