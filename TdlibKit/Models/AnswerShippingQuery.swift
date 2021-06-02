//
//  AnswerShippingQuery.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sets the result of a shipping query; for bots only
public struct AnswerShippingQuery: Codable {

    /// An error message, empty on success
    public let errorMessage: String

    /// Available shipping options
    public let shippingOptions: [ShippingOption]

    /// Identifier of the shipping query
    public let shippingQueryId: TdInt64


    public init(
        errorMessage: String,
        shippingOptions: [ShippingOption],
        shippingQueryId: TdInt64
    ) {
        self.errorMessage = errorMessage
        self.shippingOptions = shippingOptions
        self.shippingQueryId = shippingQueryId
    }
}

