//
//  SetBackground.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the background selected by the user; adds background to the list of installed backgrounds
public struct SetBackground: Codable {

    /// The input background to use, null for filled backgrounds
    public let background: InputBackground

    /// True, if the background is chosen for dark theme
    public let forDarkTheme: Bool

    /// Background type; null for default background. The method will return error 404 if type is null
    public let type: BackgroundType


    public init (
        background: InputBackground,
        forDarkTheme: Bool,
        type: BackgroundType) {

        self.background = background
        self.forDarkTheme = forDarkTheme
        self.type = type
    }
}

