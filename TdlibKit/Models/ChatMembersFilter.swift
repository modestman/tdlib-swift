//
//  ChatMembersFilter.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Specifies the kind of chat members to return in searchChatMembers
public enum ChatMembersFilter: Codable {

    /// Returns contacts of the user
    case chatMembersFilterContacts

    /// Returns the owner and administrators
    case chatMembersFilterAdministrators

    /// Returns all chat members, including restricted chat members
    case chatMembersFilterMembers

    /// Returns users under certain restrictions in the chat; can be used only by administrators in a supergroup
    case chatMembersFilterRestricted

    /// Returns users banned from the chat; can be used only by administrators in a supergroup or in a channel
    case chatMembersFilterBanned

    /// Returns bot members of the chat
    case chatMembersFilterBots


    private enum Kind: String, Codable {
        case chatMembersFilterContacts
        case chatMembersFilterAdministrators
        case chatMembersFilterMembers
        case chatMembersFilterRestricted
        case chatMembersFilterBanned
        case chatMembersFilterBots
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatMembersFilterContacts:
            self = .chatMembersFilterContacts
        case .chatMembersFilterAdministrators:
            self = .chatMembersFilterAdministrators
        case .chatMembersFilterMembers:
            self = .chatMembersFilterMembers
        case .chatMembersFilterRestricted:
            self = .chatMembersFilterRestricted
        case .chatMembersFilterBanned:
            self = .chatMembersFilterBanned
        case .chatMembersFilterBots:
            self = .chatMembersFilterBots
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatMembersFilterContacts:
            try container.encode(Kind.chatMembersFilterContacts, forKey: .type)
        case .chatMembersFilterAdministrators:
            try container.encode(Kind.chatMembersFilterAdministrators, forKey: .type)
        case .chatMembersFilterMembers:
            try container.encode(Kind.chatMembersFilterMembers, forKey: .type)
        case .chatMembersFilterRestricted:
            try container.encode(Kind.chatMembersFilterRestricted, forKey: .type)
        case .chatMembersFilterBanned:
            try container.encode(Kind.chatMembersFilterBanned, forKey: .type)
        case .chatMembersFilterBots:
            try container.encode(Kind.chatMembersFilterBots, forKey: .type)
        }
    }
}

