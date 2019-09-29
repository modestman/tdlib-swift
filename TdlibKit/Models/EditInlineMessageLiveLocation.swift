//
//  EditInlineMessageLiveLocation.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Edits the content of a live location in an inline message sent via a bot; for bots only
public struct EditInlineMessageLiveLocation: Codable {

    /// Inline message identifier
    public let inlineMessageId: String

    /// New location content of the message; may be null. Pass null to stop sharing the live location
    public let location: Location?

    /// The new message reply markup
    public let replyMarkup: ReplyMarkup


    public init (
        inlineMessageId: String,
        location: Location?,
        replyMarkup: ReplyMarkup) {

        self.inlineMessageId = inlineMessageId
        self.location = location
        self.replyMarkup = replyMarkup
    }
}

