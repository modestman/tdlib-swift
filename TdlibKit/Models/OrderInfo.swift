//
//  OrderInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Order information
public struct OrderInfo: Codable {

    /// Email address of the user
    public let emailAddress: String

    /// Name of the user
    public let name: String

    /// Phone number of the user
    public let phoneNumber: String

    /// Shipping address for this order; may be null
    public let shippingAddress: Address?


    public init (
        emailAddress: String,
        name: String,
        phoneNumber: String,
        shippingAddress: Address?) {

        self.emailAddress = emailAddress
        self.name = name
        self.phoneNumber = phoneNumber
        self.shippingAddress = shippingAddress
    }
}

