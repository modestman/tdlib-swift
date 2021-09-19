//
//  GetBackgrounds.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns backgrounds installed by the user
public struct GetBackgrounds: Codable {

    /// True, if the backgrounds must be ordered for dark theme
    public let forDarkTheme: Bool?


    public init(forDarkTheme: Bool?) {
        self.forDarkTheme = forDarkTheme
    }
}

