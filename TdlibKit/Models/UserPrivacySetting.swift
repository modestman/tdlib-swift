//
//  UserPrivacySetting.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes available user privacy settings
public enum UserPrivacySetting: Codable {

    /// A privacy setting for managing whether the user's online status is visible
    case userPrivacySettingShowStatus

    /// A privacy setting for managing whether the user's profile photo is visible
    case userPrivacySettingShowProfilePhoto

    /// A privacy setting for managing whether a link to the user's account is included in forwarded messages
    case userPrivacySettingShowLinkInForwardedMessages

    /// A privacy setting for managing whether the user can be invited to chats
    case userPrivacySettingAllowChatInvites

    /// A privacy setting for managing whether the user can be called
    case userPrivacySettingAllowCalls

    /// A privacy setting for managing whether peer-to-peer connections can be used for calls
    case userPrivacySettingAllowPeerToPeerCalls


    private enum Kind: String, Codable {
        case userPrivacySettingShowStatus
        case userPrivacySettingShowProfilePhoto
        case userPrivacySettingShowLinkInForwardedMessages
        case userPrivacySettingAllowChatInvites
        case userPrivacySettingAllowCalls
        case userPrivacySettingAllowPeerToPeerCalls
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userPrivacySettingShowStatus:
            self = .userPrivacySettingShowStatus
        case .userPrivacySettingShowProfilePhoto:
            self = .userPrivacySettingShowProfilePhoto
        case .userPrivacySettingShowLinkInForwardedMessages:
            self = .userPrivacySettingShowLinkInForwardedMessages
        case .userPrivacySettingAllowChatInvites:
            self = .userPrivacySettingAllowChatInvites
        case .userPrivacySettingAllowCalls:
            self = .userPrivacySettingAllowCalls
        case .userPrivacySettingAllowPeerToPeerCalls:
            self = .userPrivacySettingAllowPeerToPeerCalls
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userPrivacySettingShowStatus:
            try container.encode(Kind.userPrivacySettingShowStatus, forKey: .type)
        case .userPrivacySettingShowProfilePhoto:
            try container.encode(Kind.userPrivacySettingShowProfilePhoto, forKey: .type)
        case .userPrivacySettingShowLinkInForwardedMessages:
            try container.encode(Kind.userPrivacySettingShowLinkInForwardedMessages, forKey: .type)
        case .userPrivacySettingAllowChatInvites:
            try container.encode(Kind.userPrivacySettingAllowChatInvites, forKey: .type)
        case .userPrivacySettingAllowCalls:
            try container.encode(Kind.userPrivacySettingAllowCalls, forKey: .type)
        case .userPrivacySettingAllowPeerToPeerCalls:
            try container.encode(Kind.userPrivacySettingAllowPeerToPeerCalls, forKey: .type)
        }
    }
}

