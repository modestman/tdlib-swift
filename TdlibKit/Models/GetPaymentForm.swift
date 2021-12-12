//
//  GetPaymentForm.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an invoice payment form. This method must be called when the user presses inlineKeyboardButtonBuy
public struct GetPaymentForm: Codable {

    /// Chat identifier of the Invoice message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?

    /// Preferred payment form theme; pass null to use the default theme
    public let theme: PaymentFormTheme?


    public init(
        chatId: Int64?,
        messageId: Int64?,
        theme: PaymentFormTheme?
    ) {
        self.chatId = chatId
        self.messageId = messageId
        self.theme = theme
    }
}

