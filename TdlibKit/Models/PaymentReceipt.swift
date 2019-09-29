//
//  PaymentReceipt.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about a successful payment
public struct PaymentReceipt: Codable {

    /// Title of the saved credentials
    public let credentialsTitle: String

    /// Point in time (Unix timestamp) when the payment was made
    public let date: Int

    /// Contains information about the invoice
    public let invoice: Invoice

    /// Contains order information; may be null
    public let orderInfo: OrderInfo?

    /// User identifier of the payment provider bot
    public let paymentsProviderUserId: Int

    /// Chosen shipping option; may be null
    public let shippingOption: ShippingOption?


    public init (
        credentialsTitle: String,
        date: Int,
        invoice: Invoice,
        orderInfo: OrderInfo?,
        paymentsProviderUserId: Int,
        shippingOption: ShippingOption?) {

        self.credentialsTitle = credentialsTitle
        self.date = date
        self.invoice = invoice
        self.orderInfo = orderInfo
        self.paymentsProviderUserId = paymentsProviderUserId
        self.shippingOption = shippingOption
    }
}

