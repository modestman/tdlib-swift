//
//  Backgrounds.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of backgrounds
public struct Backgrounds: Codable {

    /// A list of backgrounds
    public let backgrounds: [Background]


    public init (backgrounds: [Background]) {
        self.backgrounds = backgrounds
    }
}

