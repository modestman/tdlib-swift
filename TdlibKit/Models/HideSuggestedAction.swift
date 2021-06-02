//
//  HideSuggestedAction.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Hides a suggested action
public struct HideSuggestedAction: Codable {

    /// Suggested action to hide
    public let action: SuggestedAction


    public init(action: SuggestedAction) {
        self.action = action
    }
}

