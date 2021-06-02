//
//  GetAllPassportElements.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns all available Telegram Passport elements
public struct GetAllPassportElements: Codable {

    /// Password of the current user
    public let password: String


    public init(password: String) {
        self.password = password
    }
}

