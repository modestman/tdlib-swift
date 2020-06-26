//
//  ChatActionBar.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes actions which should be possible to do through a chat action bar
public enum ChatActionBar: Codable {

    /// The chat can be reported as spam using the method reportChat with the reason chatReportReasonSpam
    case chatActionBarReportSpam

    /// The chat is a location-based supergroup, which can be reported as having unrelated location using the method reportChat with the reason chatReportReasonUnrelatedLocation
    case chatActionBarReportUnrelatedLocation

    /// The chat is a private or secret chat, which can be reported using the method reportChat, or the other user can be added to the contact list using the method addContact, or the other user can be blocked using the method blockUser
    case chatActionBarReportAddBlock

    /// The chat is a private or secret chat and the other user can be added to the contact list using the method addContact
    case chatActionBarAddContact

    /// The chat is a private or secret chat with a mutual contact and the user's phone number can be shared with the other user using the method sharePhoneNumber
    case chatActionBarSharePhoneNumber


    private enum Kind: String, Codable {
        case chatActionBarReportSpam
        case chatActionBarReportUnrelatedLocation
        case chatActionBarReportAddBlock
        case chatActionBarAddContact
        case chatActionBarSharePhoneNumber
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatActionBarReportSpam:
            self = .chatActionBarReportSpam
        case .chatActionBarReportUnrelatedLocation:
            self = .chatActionBarReportUnrelatedLocation
        case .chatActionBarReportAddBlock:
            self = .chatActionBarReportAddBlock
        case .chatActionBarAddContact:
            self = .chatActionBarAddContact
        case .chatActionBarSharePhoneNumber:
            self = .chatActionBarSharePhoneNumber
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatActionBarReportSpam:
            try container.encode(Kind.chatActionBarReportSpam, forKey: .type)
        case .chatActionBarReportUnrelatedLocation:
            try container.encode(Kind.chatActionBarReportUnrelatedLocation, forKey: .type)
        case .chatActionBarReportAddBlock:
            try container.encode(Kind.chatActionBarReportAddBlock, forKey: .type)
        case .chatActionBarAddContact:
            try container.encode(Kind.chatActionBarAddContact, forKey: .type)
        case .chatActionBarSharePhoneNumber:
            try container.encode(Kind.chatActionBarSharePhoneNumber, forKey: .type)
        }
    }
}

