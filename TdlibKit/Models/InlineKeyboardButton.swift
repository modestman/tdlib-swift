//
//  InlineKeyboardButton.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a single button in an inline keyboard
public struct InlineKeyboardButton: Codable {

    /// Text of the button
    public let text: String

    /// Type of the button
    public let type: InlineKeyboardButtonType


    public init (
        text: String,
        type: InlineKeyboardButtonType) {

        self.text = text
        self.type = type
    }
}

