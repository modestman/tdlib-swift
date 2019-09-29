//
//  PaymentForm.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about an invoice payment form
public struct PaymentForm: Codable {

    /// True, if the user can choose to save credentials
    public let canSaveCredentials: Bool

    /// Full information of the invoice
    public let invoice: Invoice

    /// True, if the user will be able to save credentials protected by a password they set up
    public let needPassword: Bool

    /// Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
    public let paymentsProvider: PaymentsProviderStripe?

    /// Contains information about saved card credentials; may be null
    public let savedCredentials: SavedCredentials?

    /// Saved server-side order information; may be null
    public let savedOrderInfo: OrderInfo?

    /// Payment form URL
    public let url: String


    public init (
        canSaveCredentials: Bool,
        invoice: Invoice,
        needPassword: Bool,
        paymentsProvider: PaymentsProviderStripe?,
        savedCredentials: SavedCredentials?,
        savedOrderInfo: OrderInfo?,
        url: String) {

        self.canSaveCredentials = canSaveCredentials
        self.invoice = invoice
        self.needPassword = needPassword
        self.paymentsProvider = paymentsProvider
        self.savedCredentials = savedCredentials
        self.savedOrderInfo = savedOrderInfo
        self.url = url
    }
}

