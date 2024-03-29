//
//  SetBackground.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the background selected by the user; adds background to the list of installed backgrounds
public struct SetBackground: Codable {

    /// The input background to use; pass null to create a new filled backgrounds or to remove the current background
    public let background: InputBackground?

    /// True, if the background is chosen for dark theme
    public let forDarkTheme: Bool?

    /// Background type; pass null to use the default type of the remote background or to remove the current background
    public let type: BackgroundType?


    public init(
        background: InputBackground?,
        forDarkTheme: Bool?,
        type: BackgroundType?
    ) {
        self.background = background
        self.forDarkTheme = forDarkTheme
        self.type = type
    }
}

