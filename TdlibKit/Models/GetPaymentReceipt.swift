//
//  GetPaymentReceipt.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a successful payment
public struct GetPaymentReceipt: Codable {

    /// Chat identifier of the PaymentSuccessful message
    public let chatId: Int64?

    /// Message identifier
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

