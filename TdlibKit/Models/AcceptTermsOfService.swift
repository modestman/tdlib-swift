//
//  AcceptTermsOfService.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Accepts Telegram terms of services
public struct AcceptTermsOfService: Codable {

    /// Terms of service identifier
    public let termsOfServiceId: String


    public init (termsOfServiceId: String) {
        self.termsOfServiceId = termsOfServiceId
    }
}

