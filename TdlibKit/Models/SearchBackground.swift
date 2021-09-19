//
//  SearchBackground.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Searches for a background by its name
public struct SearchBackground: Codable {

    /// The name of the background
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

