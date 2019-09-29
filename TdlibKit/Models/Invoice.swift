//
//  Invoice.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Product invoice
public struct Invoice: Codable {

    /// ISO 4217 currency code
    public let currency: String

    /// True, if the total price depends on the shipping method
    public let isFlexible: Bool

    /// True, if the payment is a test payment
    public let isTest: Bool

    /// True, if the user's email address is needed for payment
    public let needEmailAddress: Bool

    /// True, if the user's name is needed for payment
    public let needName: Bool

    /// True, if the user's phone number is needed for payment
    public let needPhoneNumber: Bool

    /// True, if the user's shipping address is needed for payment
    public let needShippingAddress: Bool

    /// A list of objects used to calculate the total price of the product
    public let priceParts: [LabeledPricePart]

    /// True, if the user's email address will be sent to the provider
    public let sendEmailAddressToProvider: Bool

    /// True, if the user's phone number will be sent to the provider
    public let sendPhoneNumberToProvider: Bool


    public init (
        currency: String,
        isFlexible: Bool,
        isTest: Bool,
        needEmailAddress: Bool,
        needName: Bool,
        needPhoneNumber: Bool,
        needShippingAddress: Bool,
        priceParts: [LabeledPricePart],
        sendEmailAddressToProvider: Bool,
        sendPhoneNumberToProvider: Bool) {

        self.currency = currency
        self.isFlexible = isFlexible
        self.isTest = isTest
        self.needEmailAddress = needEmailAddress
        self.needName = needName
        self.needPhoneNumber = needPhoneNumber
        self.needShippingAddress = needShippingAddress
        self.priceParts = priceParts
        self.sendEmailAddressToProvider = sendEmailAddressToProvider
        self.sendPhoneNumberToProvider = sendPhoneNumberToProvider
    }
}

