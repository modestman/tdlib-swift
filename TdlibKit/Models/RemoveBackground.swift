//
//  RemoveBackground.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes background from the list of installed backgrounds
public struct RemoveBackground: Codable {

    /// The background identifier
    public let backgroundId: TdInt64


    public init (backgroundId: TdInt64) {
        self.backgroundId = backgroundId
    }
}

