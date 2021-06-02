//
//  DeletePassportElement.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes a Telegram Passport element
public struct DeletePassportElement: Codable {

    /// Element type
    public let type: PassportElementType


    public init(type: PassportElementType) {
        self.type = type
    }
}

