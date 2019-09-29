//
//  PassportElementError.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains the description of an error in a Telegram Passport element
public struct PassportElementError: Codable {

    /// Error message
    public let message: String

    /// Error source
    public let source: PassportElementErrorSource

    /// Type of the Telegram Passport element which has the error
    public let type: PassportElementType


    public init (
        message: String,
        source: PassportElementErrorSource,
        type: PassportElementType) {

        self.message = message
        self.source = source
        self.type = type
    }
}

