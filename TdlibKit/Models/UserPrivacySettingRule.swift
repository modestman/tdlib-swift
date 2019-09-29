//
//  UserPrivacySettingRule.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a single rule for managing privacy settings
public enum UserPrivacySettingRule: Codable {

    /// A rule to allow all users to do something
    case userPrivacySettingRuleAllowAll

    /// A rule to allow all of a user's contacts to do something
    case userPrivacySettingRuleAllowContacts

    /// A rule to allow certain specified users to do something
    case userPrivacySettingRuleAllowUsers(UserPrivacySettingRuleAllowUsers)

    /// A rule to restrict all users from doing something
    case userPrivacySettingRuleRestrictAll

    /// A rule to restrict all contacts of a user from doing something
    case userPrivacySettingRuleRestrictContacts

    /// A rule to restrict all specified users from doing something
    case userPrivacySettingRuleRestrictUsers(UserPrivacySettingRuleRestrictUsers)


    private enum Kind: String, Codable {
        case userPrivacySettingRuleAllowAll
        case userPrivacySettingRuleAllowContacts
        case userPrivacySettingRuleAllowUsers
        case userPrivacySettingRuleRestrictAll
        case userPrivacySettingRuleRestrictContacts
        case userPrivacySettingRuleRestrictUsers
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .userPrivacySettingRuleAllowAll:
            self = .userPrivacySettingRuleAllowAll
        case .userPrivacySettingRuleAllowContacts:
            self = .userPrivacySettingRuleAllowContacts
        case .userPrivacySettingRuleAllowUsers:
            let value = try UserPrivacySettingRuleAllowUsers(from: decoder)
            self = .userPrivacySettingRuleAllowUsers(value)
        case .userPrivacySettingRuleRestrictAll:
            self = .userPrivacySettingRuleRestrictAll
        case .userPrivacySettingRuleRestrictContacts:
            self = .userPrivacySettingRuleRestrictContacts
        case .userPrivacySettingRuleRestrictUsers:
            let value = try UserPrivacySettingRuleRestrictUsers(from: decoder)
            self = .userPrivacySettingRuleRestrictUsers(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .userPrivacySettingRuleAllowAll:
            try container.encode(Kind.userPrivacySettingRuleAllowAll, forKey: .type)
        case .userPrivacySettingRuleAllowContacts:
            try container.encode(Kind.userPrivacySettingRuleAllowContacts, forKey: .type)
        case .userPrivacySettingRuleAllowUsers(let value):
            try container.encode(Kind.userPrivacySettingRuleAllowUsers, forKey: .type)
            try value.encode(to: encoder)
        case .userPrivacySettingRuleRestrictAll:
            try container.encode(Kind.userPrivacySettingRuleRestrictAll, forKey: .type)
        case .userPrivacySettingRuleRestrictContacts:
            try container.encode(Kind.userPrivacySettingRuleRestrictContacts, forKey: .type)
        case .userPrivacySettingRuleRestrictUsers(let value):
            try container.encode(Kind.userPrivacySettingRuleRestrictUsers, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A rule to allow certain specified users to do something
public struct UserPrivacySettingRuleAllowUsers: Codable {

    /// The user identifiers
    public let userIds: [Int]


    public init (userIds: [Int]) {
        self.userIds = userIds
    }
}

/// A rule to restrict all specified users from doing something
public struct UserPrivacySettingRuleRestrictUsers: Codable {

    /// The user identifiers
    public let userIds: [Int]


    public init (userIds: [Int]) {
        self.userIds = userIds
    }
}

