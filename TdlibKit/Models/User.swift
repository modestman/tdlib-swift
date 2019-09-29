//
//  User.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a user
public struct User: Codable {

    /// First name of the user
    public let firstName: String

    /// If false, the user is inaccessible, and the only information known about the user is inside this class. It can't be passed to any method except GetUser
    public let haveAccess: Bool

    /// User identifier
    public let id: Int

    /// Relationship from the other user to the current user
    public let incomingLink: LinkState

    /// True, if many users reported this user as a scam
    public let isScam: Bool

    /// True, if the user is Telegram support account
    public let isSupport: Bool

    /// True, if the user is verified
    public let isVerified: Bool

    /// IETF language tag of the user's language; only available to bots
    public let languageCode: String

    /// Last name of the user
    public let lastName: String

    /// Relationship from the current user to the other user
    public let outgoingLink: LinkState

    /// Phone number of the user
    public let phoneNumber: String

    /// Profile photo of the user; may be null
    public let profilePhoto: ProfilePhoto?

    /// If non-empty, it contains the reason why access to this user must be restricted. The format of the string is "{type}: {description}".//-{type} contains the type of the restriction and at least one of the suffixes "-all", "-ios", "-android", or "-wp", which describe the platforms on which access should be restricted. (For example, "terms-ios-android". {description} contains a human-readable description of the restriction, which can be shown to the user)
    public let restrictionReason: String

    /// Current online status of the user
    public let status: UserStatus

    /// Type of the user
    public let type: UserType

    /// Username of the user
    public let username: String


    public init (
        firstName: String,
        haveAccess: Bool,
        id: Int,
        incomingLink: LinkState,
        isScam: Bool,
        isSupport: Bool,
        isVerified: Bool,
        languageCode: String,
        lastName: String,
        outgoingLink: LinkState,
        phoneNumber: String,
        profilePhoto: ProfilePhoto?,
        restrictionReason: String,
        status: UserStatus,
        type: UserType,
        username: String) {

        self.firstName = firstName
        self.haveAccess = haveAccess
        self.id = id
        self.incomingLink = incomingLink
        self.isScam = isScam
        self.isSupport = isSupport
        self.isVerified = isVerified
        self.languageCode = languageCode
        self.lastName = lastName
        self.outgoingLink = outgoingLink
        self.phoneNumber = phoneNumber
        self.profilePhoto = profilePhoto
        self.restrictionReason = restrictionReason
        self.status = status
        self.type = type
        self.username = username
    }
}

