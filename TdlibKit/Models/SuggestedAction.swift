//
//  SuggestedAction.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an action suggested to the current user
public enum SuggestedAction: Codable {

    /// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option
    case suggestedActionEnableArchiveAndMuteNewChats

    /// Suggests the user to check authorization phone number and change the phone number if it is inaccessible
    case suggestedActionCheckPhoneNumber


    private enum Kind: String, Codable {
        case suggestedActionEnableArchiveAndMuteNewChats
        case suggestedActionCheckPhoneNumber
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            self = .suggestedActionEnableArchiveAndMuteNewChats
        case .suggestedActionCheckPhoneNumber:
            self = .suggestedActionCheckPhoneNumber
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .suggestedActionEnableArchiveAndMuteNewChats:
            try container.encode(Kind.suggestedActionEnableArchiveAndMuteNewChats, forKey: .type)
        case .suggestedActionCheckPhoneNumber:
            try container.encode(Kind.suggestedActionCheckPhoneNumber, forKey: .type)
        }
    }
}

