//
//  InternalLinkType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an internal https://t.me or tg: link, which must be processed by the app in a special way
public enum InternalLinkType: Codable {

    /// The link is a link to the active sessions section of the app. Use getActiveSessions to handle the link
    case internalLinkTypeActiveSessions

    /// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
    case internalLinkTypeAuthenticationCode(InternalLinkTypeAuthenticationCode)

    /// The link is a link to a background. Call searchBackground with the given background name to process the link
    case internalLinkTypeBackground(InternalLinkTypeBackground)

    /// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed
    case internalLinkTypeBotStart(InternalLinkTypeBotStart)

    /// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a group to add the bot to, and then call sendBotStartMessage with the given start parameter and the chosen group chat. Bots can be added to a public group only by administrators of the group
    case internalLinkTypeBotStartInGroup(InternalLinkTypeBotStartInGroup)

    /// The link is a link to the change phone number section of the app
    case internalLinkTypeChangePhoneNumber

    /// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link
    case internalLinkTypeChatInvite(InternalLinkTypeChatInvite)

    /// The link is a link to the filter settings section of the app
    case internalLinkTypeFilterSettings

    /// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
    case internalLinkTypeGame(InternalLinkTypeGame)

    /// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link
    case internalLinkTypeLanguagePack(InternalLinkTypeLanguagePack)

    /// The link is a link to a Telegram message. Call getMessageLinkInfo with the given URL to process the link
    case internalLinkTypeMessage(InternalLinkTypeMessage)

    /// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
    case internalLinkTypeMessageDraft(InternalLinkTypeMessageDraft)

    /// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the app, otherwise ignore it
    case internalLinkTypePassportDataRequest(InternalLinkTypePassportDataRequest)

    /// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link
    case internalLinkTypePhoneNumberConfirmation(InternalLinkTypePhoneNumberConfirmation)

    /// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
    case internalLinkTypeProxy(InternalLinkTypeProxy)

    /// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link
    case internalLinkTypePublicChat(InternalLinkTypePublicChat)

    /// The link can be used to login the current user on another device, but it must be scanned from QR-code using in-app camera. An alert similar to "This code can be used to allow someone to log in to your Telegram account. To confirm Telegram login, please go to Settings > Devices > Scan QR and scan the code" needs to be shown
    case internalLinkTypeQrCodeAuthentication

    /// The link is a link to app settings
    case internalLinkTypeSettings

    /// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set
    case internalLinkTypeStickerSet(InternalLinkTypeStickerSet)

    /// The link is a link to a theme. TDLib has no theme support yet
    case internalLinkTypeTheme(InternalLinkTypeTheme)

    /// The link is a link to the theme settings section of the app
    case internalLinkTypeThemeSettings

    /// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
    case internalLinkTypeUnknownDeepLink(InternalLinkTypeUnknownDeepLink)

    /// The link is a link to an unsupported proxy. An alert can be shown to the user
    case internalLinkTypeUnsupportedProxy

    /// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGoupCall with the given invite hash to process the link
    case internalLinkTypeVideoChat(InternalLinkTypeVideoChat)


    private enum Kind: String, Codable {
        case internalLinkTypeActiveSessions
        case internalLinkTypeAuthenticationCode
        case internalLinkTypeBackground
        case internalLinkTypeBotStart
        case internalLinkTypeBotStartInGroup
        case internalLinkTypeChangePhoneNumber
        case internalLinkTypeChatInvite
        case internalLinkTypeFilterSettings
        case internalLinkTypeGame
        case internalLinkTypeLanguagePack
        case internalLinkTypeMessage
        case internalLinkTypeMessageDraft
        case internalLinkTypePassportDataRequest
        case internalLinkTypePhoneNumberConfirmation
        case internalLinkTypeProxy
        case internalLinkTypePublicChat
        case internalLinkTypeQrCodeAuthentication
        case internalLinkTypeSettings
        case internalLinkTypeStickerSet
        case internalLinkTypeTheme
        case internalLinkTypeThemeSettings
        case internalLinkTypeUnknownDeepLink
        case internalLinkTypeUnsupportedProxy
        case internalLinkTypeVideoChat
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .internalLinkTypeActiveSessions:
            self = .internalLinkTypeActiveSessions
        case .internalLinkTypeAuthenticationCode:
            let value = try InternalLinkTypeAuthenticationCode(from: decoder)
            self = .internalLinkTypeAuthenticationCode(value)
        case .internalLinkTypeBackground:
            let value = try InternalLinkTypeBackground(from: decoder)
            self = .internalLinkTypeBackground(value)
        case .internalLinkTypeBotStart:
            let value = try InternalLinkTypeBotStart(from: decoder)
            self = .internalLinkTypeBotStart(value)
        case .internalLinkTypeBotStartInGroup:
            let value = try InternalLinkTypeBotStartInGroup(from: decoder)
            self = .internalLinkTypeBotStartInGroup(value)
        case .internalLinkTypeChangePhoneNumber:
            self = .internalLinkTypeChangePhoneNumber
        case .internalLinkTypeChatInvite:
            let value = try InternalLinkTypeChatInvite(from: decoder)
            self = .internalLinkTypeChatInvite(value)
        case .internalLinkTypeFilterSettings:
            self = .internalLinkTypeFilterSettings
        case .internalLinkTypeGame:
            let value = try InternalLinkTypeGame(from: decoder)
            self = .internalLinkTypeGame(value)
        case .internalLinkTypeLanguagePack:
            let value = try InternalLinkTypeLanguagePack(from: decoder)
            self = .internalLinkTypeLanguagePack(value)
        case .internalLinkTypeMessage:
            let value = try InternalLinkTypeMessage(from: decoder)
            self = .internalLinkTypeMessage(value)
        case .internalLinkTypeMessageDraft:
            let value = try InternalLinkTypeMessageDraft(from: decoder)
            self = .internalLinkTypeMessageDraft(value)
        case .internalLinkTypePassportDataRequest:
            let value = try InternalLinkTypePassportDataRequest(from: decoder)
            self = .internalLinkTypePassportDataRequest(value)
        case .internalLinkTypePhoneNumberConfirmation:
            let value = try InternalLinkTypePhoneNumberConfirmation(from: decoder)
            self = .internalLinkTypePhoneNumberConfirmation(value)
        case .internalLinkTypeProxy:
            let value = try InternalLinkTypeProxy(from: decoder)
            self = .internalLinkTypeProxy(value)
        case .internalLinkTypePublicChat:
            let value = try InternalLinkTypePublicChat(from: decoder)
            self = .internalLinkTypePublicChat(value)
        case .internalLinkTypeQrCodeAuthentication:
            self = .internalLinkTypeQrCodeAuthentication
        case .internalLinkTypeSettings:
            self = .internalLinkTypeSettings
        case .internalLinkTypeStickerSet:
            let value = try InternalLinkTypeStickerSet(from: decoder)
            self = .internalLinkTypeStickerSet(value)
        case .internalLinkTypeTheme:
            let value = try InternalLinkTypeTheme(from: decoder)
            self = .internalLinkTypeTheme(value)
        case .internalLinkTypeThemeSettings:
            self = .internalLinkTypeThemeSettings
        case .internalLinkTypeUnknownDeepLink:
            let value = try InternalLinkTypeUnknownDeepLink(from: decoder)
            self = .internalLinkTypeUnknownDeepLink(value)
        case .internalLinkTypeUnsupportedProxy:
            self = .internalLinkTypeUnsupportedProxy
        case .internalLinkTypeVideoChat:
            let value = try InternalLinkTypeVideoChat(from: decoder)
            self = .internalLinkTypeVideoChat(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .internalLinkTypeActiveSessions:
            try container.encode(Kind.internalLinkTypeActiveSessions, forKey: .type)
        case .internalLinkTypeAuthenticationCode(let value):
            try container.encode(Kind.internalLinkTypeAuthenticationCode, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBackground(let value):
            try container.encode(Kind.internalLinkTypeBackground, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotStart(let value):
            try container.encode(Kind.internalLinkTypeBotStart, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeBotStartInGroup(let value):
            try container.encode(Kind.internalLinkTypeBotStartInGroup, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeChangePhoneNumber:
            try container.encode(Kind.internalLinkTypeChangePhoneNumber, forKey: .type)
        case .internalLinkTypeChatInvite(let value):
            try container.encode(Kind.internalLinkTypeChatInvite, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeFilterSettings:
            try container.encode(Kind.internalLinkTypeFilterSettings, forKey: .type)
        case .internalLinkTypeGame(let value):
            try container.encode(Kind.internalLinkTypeGame, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeLanguagePack(let value):
            try container.encode(Kind.internalLinkTypeLanguagePack, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeMessage(let value):
            try container.encode(Kind.internalLinkTypeMessage, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeMessageDraft(let value):
            try container.encode(Kind.internalLinkTypeMessageDraft, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePassportDataRequest(let value):
            try container.encode(Kind.internalLinkTypePassportDataRequest, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePhoneNumberConfirmation(let value):
            try container.encode(Kind.internalLinkTypePhoneNumberConfirmation, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeProxy(let value):
            try container.encode(Kind.internalLinkTypeProxy, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypePublicChat(let value):
            try container.encode(Kind.internalLinkTypePublicChat, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeQrCodeAuthentication:
            try container.encode(Kind.internalLinkTypeQrCodeAuthentication, forKey: .type)
        case .internalLinkTypeSettings:
            try container.encode(Kind.internalLinkTypeSettings, forKey: .type)
        case .internalLinkTypeStickerSet(let value):
            try container.encode(Kind.internalLinkTypeStickerSet, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeTheme(let value):
            try container.encode(Kind.internalLinkTypeTheme, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeThemeSettings:
            try container.encode(Kind.internalLinkTypeThemeSettings, forKey: .type)
        case .internalLinkTypeUnknownDeepLink(let value):
            try container.encode(Kind.internalLinkTypeUnknownDeepLink, forKey: .type)
            try value.encode(to: encoder)
        case .internalLinkTypeUnsupportedProxy:
            try container.encode(Kind.internalLinkTypeUnsupportedProxy, forKey: .type)
        case .internalLinkTypeVideoChat(let value):
            try container.encode(Kind.internalLinkTypeVideoChat, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// The link contains an authentication code. Call checkAuthenticationCode with the code if the current authorization state is authorizationStateWaitCode
public struct InternalLinkTypeAuthenticationCode: Codable {

    /// The authentication code
    public let code: String


    public init(code: String) {
        self.code = code
    }
}

/// The link is a link to a background. Call searchBackground with the given background name to process the link
public struct InternalLinkTypeBackground: Codable {

    /// Name of the background
    public let backgroundName: String


    public init(backgroundName: String) {
        self.backgroundName = backgroundName
    }
}

/// The link is a link to a chat with a Telegram bot. Call searchPublicChat with the given bot username, check that the user is a bot, show START button in the chat with the bot, and then call sendBotStartMessage with the given start parameter after the button is pressed
public struct InternalLinkTypeBotStart: Codable {

    /// Username of the bot
    public let botUsername: String

    /// The parameter to be passed to sendBotStartMessage
    public let startParameter: String


    public init(
        botUsername: String,
        startParameter: String
    ) {
        self.botUsername = botUsername
        self.startParameter = startParameter
    }
}

/// The link is a link to a Telegram bot, which is supposed to be added to a group chat. Call searchPublicChat with the given bot username, check that the user is a bot and can be added to groups, ask the current user to select a group to add the bot to, and then call sendBotStartMessage with the given start parameter and the chosen group chat. Bots can be added to a public group only by administrators of the group
public struct InternalLinkTypeBotStartInGroup: Codable {

    /// Username of the bot
    public let botUsername: String

    /// The parameter to be passed to sendBotStartMessage
    public let startParameter: String


    public init(
        botUsername: String,
        startParameter: String
    ) {
        self.botUsername = botUsername
        self.startParameter = startParameter
    }
}

/// The link is a chat invite link. Call checkChatInviteLink with the given invite link to process the link
public struct InternalLinkTypeChatInvite: Codable {

    /// Internal representation of the invite link
    public let inviteLink: String


    public init(inviteLink: String) {
        self.inviteLink = inviteLink
    }
}

/// The link is a link to a game. Call searchPublicChat with the given bot username, check that the user is a bot, ask the current user to select a chat to send the game, and then call sendMessage with inputMessageGame
public struct InternalLinkTypeGame: Codable {

    /// Username of the bot that owns the game
    public let botUsername: String

    /// Short name of the game
    public let gameShortName: String


    public init(
        botUsername: String,
        gameShortName: String
    ) {
        self.botUsername = botUsername
        self.gameShortName = gameShortName
    }
}

/// The link is a link to a language pack. Call getLanguagePackInfo with the given language pack identifier to process the link
public struct InternalLinkTypeLanguagePack: Codable {

    /// Language pack identifier
    public let languagePackId: String


    public init(languagePackId: String) {
        self.languagePackId = languagePackId
    }
}

/// The link is a link to a Telegram message. Call getMessageLinkInfo with the given URL to process the link
public struct InternalLinkTypeMessage: Codable {

    /// URL to be passed to getMessageLinkInfo
    public let url: String


    public init(url: String) {
        self.url = url
    }
}

/// The link contains a message draft text. A share screen needs to be shown to the user, then the chosen chat must be opened and the text is added to the input field
public struct InternalLinkTypeMessageDraft: Codable {

    /// True, if the first line of the text contains a link. If true, the input field needs to be focused and the text after the link must be selected
    public let containsLink: Bool

    /// Message draft text
    public let text: FormattedText


    public init(
        containsLink: Bool,
        text: FormattedText
    ) {
        self.containsLink = containsLink
        self.text = text
    }
}

/// The link contains a request of Telegram passport data. Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from outside of the app, otherwise ignore it
public struct InternalLinkTypePassportDataRequest: Codable {

    /// User identifier of the service's bot
    public let botUserId: Int64

    /// An HTTP URL to open once the request is finished or canceled with the parameter tg_passport=success or tg_passport=cancel respectively. If empty, then the link tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel needs to be opened instead
    public let callbackUrl: String

    /// Unique request identifier provided by the service
    public let nonce: String

    /// Service's public key
    public let publicKey: String

    /// Telegram Passport element types requested by the service
    public let scope: String


    public init(
        botUserId: Int64,
        callbackUrl: String,
        nonce: String,
        publicKey: String,
        scope: String
    ) {
        self.botUserId = botUserId
        self.callbackUrl = callbackUrl
        self.nonce = nonce
        self.publicKey = publicKey
        self.scope = scope
    }
}

/// The link can be used to confirm ownership of a phone number to prevent account deletion. Call sendPhoneNumberConfirmationCode with the given hash and phone number to process the link
public struct InternalLinkTypePhoneNumberConfirmation: Codable {

    /// Hash value from the link
    public let hash: String

    /// Phone number value from the link
    public let phoneNumber: String


    public init(
        hash: String,
        phoneNumber: String
    ) {
        self.hash = hash
        self.phoneNumber = phoneNumber
    }
}

/// The link is a link to a proxy. Call addProxy with the given parameters to process the link and add the proxy
public struct InternalLinkTypeProxy: Codable {

    /// Proxy server port
    public let port: Int

    /// Proxy server IP address
    public let server: String

    /// Type of the proxy
    public let type: ProxyType


    public init(
        port: Int,
        server: String,
        type: ProxyType
    ) {
        self.port = port
        self.server = server
        self.type = type
    }
}

/// The link is a link to a chat by its username. Call searchPublicChat with the given chat username to process the link
public struct InternalLinkTypePublicChat: Codable {

    /// Username of the chat
    public let chatUsername: String


    public init(chatUsername: String) {
        self.chatUsername = chatUsername
    }
}

/// The link is a link to a sticker set. Call searchStickerSet with the given sticker set name to process the link and show the sticker set
public struct InternalLinkTypeStickerSet: Codable {

    /// Name of the sticker set
    public let stickerSetName: String


    public init(stickerSetName: String) {
        self.stickerSetName = stickerSetName
    }
}

/// The link is a link to a theme. TDLib has no theme support yet
public struct InternalLinkTypeTheme: Codable {

    /// Name of the theme
    public let themeName: String


    public init(themeName: String) {
        self.themeName = themeName
    }
}

/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
public struct InternalLinkTypeUnknownDeepLink: Codable {

    /// Link to be passed to getDeepLinkInfo
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

/// The link is a link to a video chat. Call searchPublicChat with the given chat username, and then joinGoupCall with the given invite hash to process the link
public struct InternalLinkTypeVideoChat: Codable {

    /// Username of the chat with the video chat
    public let chatUsername: String

    /// If non-empty, invite hash to be used to join the video chat without being muted by administrators
    public let inviteHash: String

    /// True, if the video chat is expected to be a live stream in a channel or a broadcast group
    public let isLiveStream: Bool


    public init(
        chatUsername: String,
        inviteHash: String,
        isLiveStream: Bool
    ) {
        self.chatUsername = chatUsername
        self.inviteHash = inviteHash
        self.isLiveStream = isLiveStream
    }
}

