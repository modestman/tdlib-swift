//
//  GetPassportElement.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns one of the available Telegram Passport elements
public struct GetPassportElement: Codable {

    /// Password of the current user
    public let password: String?

    /// Telegram Passport element type
    public let type: PassportElementType?


    public init(
        password: String?,
        type: PassportElementType?
    ) {
        self.password = password
        self.type = type
    }
}

