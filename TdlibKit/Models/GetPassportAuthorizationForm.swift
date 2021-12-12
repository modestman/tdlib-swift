//
//  GetPassportAuthorizationForm.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a Telegram Passport authorization form for sharing data with a service
public struct GetPassportAuthorizationForm: Codable {

    /// User identifier of the service's bot
    public let botUserId: Int64?

    /// Unique request identifier provided by the service
    public let nonce: String?

    /// Service's public key
    public let publicKey: String?

    /// Telegram Passport element types requested by the service
    public let scope: String?


    public init(
        botUserId: Int64?,
        nonce: String?,
        publicKey: String?,
        scope: String?
    ) {
        self.botUserId = botUserId
        self.nonce = nonce
        self.publicKey = publicKey
        self.scope = scope
    }
}

