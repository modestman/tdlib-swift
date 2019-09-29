//
//  PassportElementsWithErrors.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a Telegram Passport elements and corresponding errors
public struct PassportElementsWithErrors: Codable {

    /// Telegram Passport elements
    public let elements: [PassportElement]

    /// Errors in the elements that are already available
    public let errors: [PassportElementError]


    public init (
        elements: [PassportElement],
        errors: [PassportElementError]) {

        self.elements = elements
        self.errors = errors
    }
}

