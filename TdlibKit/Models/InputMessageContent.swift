//
//  InputMessageContent.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// The content of a message to send
public enum InputMessageContent: Codable {

    /// A text message
    case inputMessageText(InputMessageText)

    /// An animation message (GIF-style).
    case inputMessageAnimation(InputMessageAnimation)

    /// An audio message
    case inputMessageAudio(InputMessageAudio)

    /// A document message (general file)
    case inputMessageDocument(InputMessageDocument)

    /// A photo message
    case inputMessagePhoto(InputMessagePhoto)

    /// A sticker message
    case inputMessageSticker(InputMessageSticker)

    /// A video message
    case inputMessageVideo(InputMessageVideo)

    /// A video note message
    case inputMessageVideoNote(InputMessageVideoNote)

    /// A voice note message
    case inputMessageVoiceNote(InputMessageVoiceNote)

    /// A message with a location
    case inputMessageLocation(InputMessageLocation)

    /// A message with information about a venue
    case inputMessageVenue(InputMessageVenue)

    /// A message containing a user contact
    case inputMessageContact(InputMessageContact)

    /// A message with a game; not supported for channels or secret chats
    case inputMessageGame(InputMessageGame)

    /// A message with an invoice; can be used only by bots and only in private chats
    case inputMessageInvoice(InputMessageInvoice)

    /// A message with a poll. Polls can't be sent to private or secret chats
    case inputMessagePoll(InputMessagePoll)

    /// A forwarded message
    case inputMessageForwarded(InputMessageForwarded)


    private enum Kind: String, Codable {
        case inputMessageText
        case inputMessageAnimation
        case inputMessageAudio
        case inputMessageDocument
        case inputMessagePhoto
        case inputMessageSticker
        case inputMessageVideo
        case inputMessageVideoNote
        case inputMessageVoiceNote
        case inputMessageLocation
        case inputMessageVenue
        case inputMessageContact
        case inputMessageGame
        case inputMessageInvoice
        case inputMessagePoll
        case inputMessageForwarded
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .inputMessageText:
            let value = try InputMessageText(from: decoder)
            self = .inputMessageText(value)
        case .inputMessageAnimation:
            let value = try InputMessageAnimation(from: decoder)
            self = .inputMessageAnimation(value)
        case .inputMessageAudio:
            let value = try InputMessageAudio(from: decoder)
            self = .inputMessageAudio(value)
        case .inputMessageDocument:
            let value = try InputMessageDocument(from: decoder)
            self = .inputMessageDocument(value)
        case .inputMessagePhoto:
            let value = try InputMessagePhoto(from: decoder)
            self = .inputMessagePhoto(value)
        case .inputMessageSticker:
            let value = try InputMessageSticker(from: decoder)
            self = .inputMessageSticker(value)
        case .inputMessageVideo:
            let value = try InputMessageVideo(from: decoder)
            self = .inputMessageVideo(value)
        case .inputMessageVideoNote:
            let value = try InputMessageVideoNote(from: decoder)
            self = .inputMessageVideoNote(value)
        case .inputMessageVoiceNote:
            let value = try InputMessageVoiceNote(from: decoder)
            self = .inputMessageVoiceNote(value)
        case .inputMessageLocation:
            let value = try InputMessageLocation(from: decoder)
            self = .inputMessageLocation(value)
        case .inputMessageVenue:
            let value = try InputMessageVenue(from: decoder)
            self = .inputMessageVenue(value)
        case .inputMessageContact:
            let value = try InputMessageContact(from: decoder)
            self = .inputMessageContact(value)
        case .inputMessageGame:
            let value = try InputMessageGame(from: decoder)
            self = .inputMessageGame(value)
        case .inputMessageInvoice:
            let value = try InputMessageInvoice(from: decoder)
            self = .inputMessageInvoice(value)
        case .inputMessagePoll:
            let value = try InputMessagePoll(from: decoder)
            self = .inputMessagePoll(value)
        case .inputMessageForwarded:
            let value = try InputMessageForwarded(from: decoder)
            self = .inputMessageForwarded(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .inputMessageText(let value):
            try container.encode(Kind.inputMessageText, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageAnimation(let value):
            try container.encode(Kind.inputMessageAnimation, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageAudio(let value):
            try container.encode(Kind.inputMessageAudio, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageDocument(let value):
            try container.encode(Kind.inputMessageDocument, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessagePhoto(let value):
            try container.encode(Kind.inputMessagePhoto, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageSticker(let value):
            try container.encode(Kind.inputMessageSticker, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVideo(let value):
            try container.encode(Kind.inputMessageVideo, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVideoNote(let value):
            try container.encode(Kind.inputMessageVideoNote, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVoiceNote(let value):
            try container.encode(Kind.inputMessageVoiceNote, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageLocation(let value):
            try container.encode(Kind.inputMessageLocation, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageVenue(let value):
            try container.encode(Kind.inputMessageVenue, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageContact(let value):
            try container.encode(Kind.inputMessageContact, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageGame(let value):
            try container.encode(Kind.inputMessageGame, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageInvoice(let value):
            try container.encode(Kind.inputMessageInvoice, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessagePoll(let value):
            try container.encode(Kind.inputMessagePoll, forKey: .type)
            try value.encode(to: encoder)
        case .inputMessageForwarded(let value):
            try container.encode(Kind.inputMessageForwarded, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A text message
public struct InputMessageText: Codable {

    /// True, if a chat message draft should be deleted
    public let clearDraft: Bool

    /// True, if rich web page previews for URLs in the message text should be disabled
    public let disableWebPagePreview: Bool

    /// Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Code, Pre, PreCode and TextUrl entities are allowed to be specified manually
    public let text: FormattedText


    public init (
        clearDraft: Bool,
        disableWebPagePreview: Bool,
        text: FormattedText) {

        self.clearDraft = clearDraft
        self.disableWebPagePreview = disableWebPagePreview
        self.text = text
    }
}

/// An animation message (GIF-style).
public struct InputMessageAnimation: Codable {

    /// Animation file to be sent
    public let animation: InputFile

    /// Animation caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Duration of the animation, in seconds
    public let duration: Int

    /// Height of the animation; may be replaced by the server
    public let height: Int

    /// Animation thumbnail, if available
    public let thumbnail: InputThumbnail

    /// Width of the animation; may be replaced by the server
    public let width: Int


    public init (
        animation: InputFile,
        caption: FormattedText,
        duration: Int,
        height: Int,
        thumbnail: InputThumbnail,
        width: Int) {

        self.animation = animation
        self.caption = caption
        self.duration = duration
        self.height = height
        self.thumbnail = thumbnail
        self.width = width
    }
}

/// An audio message
public struct InputMessageAudio: Codable {

    /// Thumbnail of the cover for the album, if available
    public let albumCoverThumbnail: InputThumbnail

    /// Audio file to be sent
    public let audio: InputFile

    /// Audio caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Duration of the audio, in seconds; may be replaced by the server
    public let duration: Int

    /// Performer of the audio; 0-64 characters, may be replaced by the server
    public let performer: String

    /// Title of the audio; 0-64 characters; may be replaced by the server
    public let title: String


    public init (
        albumCoverThumbnail: InputThumbnail,
        audio: InputFile,
        caption: FormattedText,
        duration: Int,
        performer: String,
        title: String) {

        self.albumCoverThumbnail = albumCoverThumbnail
        self.audio = audio
        self.caption = caption
        self.duration = duration
        self.performer = performer
        self.title = title
    }
}

/// A document message (general file)
public struct InputMessageDocument: Codable {

    /// Document caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Document to be sent
    public let document: InputFile

    /// Document thumbnail, if available
    public let thumbnail: InputThumbnail


    public init (
        caption: FormattedText,
        document: InputFile,
        thumbnail: InputThumbnail) {

        self.caption = caption
        self.document = document
        self.thumbnail = thumbnail
    }
}

/// A photo message
public struct InputMessagePhoto: Codable {

    /// File identifiers of the stickers added to the photo, if applicable
    public let addedStickerFileIds: [Int]

    /// Photo caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Photo height
    public let height: Int

    /// Photo to send
    public let photo: InputFile

    /// Photo thumbnail to be sent, this is sent to the other party in secret chats only
    public let thumbnail: InputThumbnail

    /// Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
    public let ttl: Int

    /// Photo width
    public let width: Int


    public init (
        addedStickerFileIds: [Int],
        caption: FormattedText,
        height: Int,
        photo: InputFile,
        thumbnail: InputThumbnail,
        ttl: Int,
        width: Int) {

        self.addedStickerFileIds = addedStickerFileIds
        self.caption = caption
        self.height = height
        self.photo = photo
        self.thumbnail = thumbnail
        self.ttl = ttl
        self.width = width
    }
}

/// A sticker message
public struct InputMessageSticker: Codable {

    /// Sticker height
    public let height: Int

    /// Sticker to be sent
    public let sticker: InputFile

    /// Sticker thumbnail, if available
    public let thumbnail: InputThumbnail

    /// Sticker width
    public let width: Int


    public init (
        height: Int,
        sticker: InputFile,
        thumbnail: InputThumbnail,
        width: Int) {

        self.height = height
        self.sticker = sticker
        self.thumbnail = thumbnail
        self.width = width
    }
}

/// A video message
public struct InputMessageVideo: Codable {

    /// File identifiers of the stickers added to the video, if applicable
    public let addedStickerFileIds: [Int]

    /// Video caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Duration of the video, in seconds
    public let duration: Int

    /// Video height
    public let height: Int

    /// True, if the video should be tried to be streamed
    public let supportsStreaming: Bool

    /// Video thumbnail, if available
    public let thumbnail: InputThumbnail

    /// Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
    public let ttl: Int

    /// Video to be sent
    public let video: InputFile

    /// Video width
    public let width: Int


    public init (
        addedStickerFileIds: [Int],
        caption: FormattedText,
        duration: Int,
        height: Int,
        supportsStreaming: Bool,
        thumbnail: InputThumbnail,
        ttl: Int,
        video: InputFile,
        width: Int) {

        self.addedStickerFileIds = addedStickerFileIds
        self.caption = caption
        self.duration = duration
        self.height = height
        self.supportsStreaming = supportsStreaming
        self.thumbnail = thumbnail
        self.ttl = ttl
        self.video = video
        self.width = width
    }
}

/// A video note message
public struct InputMessageVideoNote: Codable {

    /// Duration of the video, in seconds
    public let duration: Int

    /// Video width and height; must be positive and not greater than 640
    public let length: Int

    /// Video thumbnail, if available
    public let thumbnail: InputThumbnail

    /// Video note to be sent
    public let videoNote: InputFile


    public init (
        duration: Int,
        length: Int,
        thumbnail: InputThumbnail,
        videoNote: InputFile) {

        self.duration = duration
        self.length = length
        self.thumbnail = thumbnail
        self.videoNote = videoNote
    }
}

/// A voice note message
public struct InputMessageVoiceNote: Codable {

    /// Voice note caption; 0-GetOption("message_caption_length_max") characters
    public let caption: FormattedText

    /// Duration of the voice note, in seconds
    public let duration: Int

    /// Voice note to be sent
    public let voiceNote: InputFile

    /// Waveform representation of the voice note, in 5-bit format
    public let waveform: Data


    public init (
        caption: FormattedText,
        duration: Int,
        voiceNote: InputFile,
        waveform: Data) {

        self.caption = caption
        self.duration = duration
        self.voiceNote = voiceNote
        self.waveform = waveform
    }
}

/// A message with a location
public struct InputMessageLocation: Codable {

    /// Period for which the location can be updated, in seconds; should bebetween 60 and 86400 for a live location and 0 otherwise
    public let livePeriod: Int

    /// Location to be sent
    public let location: Location


    public init (
        livePeriod: Int,
        location: Location) {

        self.livePeriod = livePeriod
        self.location = location
    }
}

/// A message with information about a venue
public struct InputMessageVenue: Codable {

    /// Venue to send
    public let venue: Venue


    public init (venue: Venue) {
        self.venue = venue
    }
}

/// A message containing a user contact
public struct InputMessageContact: Codable {

    /// Contact to send
    public let contact: Contact


    public init (contact: Contact) {
        self.contact = contact
    }
}

/// A message with a game; not supported for channels or secret chats
public struct InputMessageGame: Codable {

    /// User identifier of the bot that owns the game
    public let botUserId: Int

    /// Short name of the game
    public let gameShortName: String


    public init (
        botUserId: Int,
        gameShortName: String) {

        self.botUserId = botUserId
        self.gameShortName = gameShortName
    }
}

/// A message with an invoice; can be used only by bots and only in private chats
public struct InputMessageInvoice: Codable {

    public let description: String

    /// Invoice
    public let invoice: Invoice

    /// The invoice payload
    public let payload: Data

    /// Product photo height
    public let photoHeight: Int

    /// Product photo size
    public let photoSize: Int

    /// Product photo URL; optional
    public let photoUrl: String

    /// Product photo width
    public let photoWidth: Int

    /// JSON-encoded data about the invoice, which will be shared with the payment provider
    public let providerData: String

    /// Payment provider token
    public let providerToken: String

    /// Unique invoice bot start_parameter for the generation of this invoice
    public let startParameter: String

    /// Product title; 1-32 characters
    public let title: String


    public init (
        description: String,
        invoice: Invoice,
        payload: Data,
        photoHeight: Int,
        photoSize: Int,
        photoUrl: String,
        photoWidth: Int,
        providerData: String,
        providerToken: String,
        startParameter: String,
        title: String) {

        self.description = description
        self.invoice = invoice
        self.payload = payload
        self.photoHeight = photoHeight
        self.photoSize = photoSize
        self.photoUrl = photoUrl
        self.photoWidth = photoWidth
        self.providerData = providerData
        self.providerToken = providerToken
        self.startParameter = startParameter
        self.title = title
    }
}

/// A message with a poll. Polls can't be sent to private or secret chats
public struct InputMessagePoll: Codable {

    /// List of poll answer options, 2-10 strings 1-100 characters each
    public let options: [String]

    /// Poll question, 1-255 characters
    public let question: String


    public init (
        options: [String],
        question: String) {

        self.options = options
        self.question = question
    }
}

/// A forwarded message
public struct InputMessageForwarded: Codable {

    /// Identifier for the chat this forwarded message came from
    public let fromChatId: Int64

    /// True, if a game message should be shared within a launched game; applies only to game messages
    public let inGameShare: Bool

    /// Identifier of the message to forward
    public let messageId: Int64

    /// True, if media caption of the message copy needs to be removed. Ignored if send_copy is false
    public let removeCaption: Bool

    /// True, if content of the message needs to be copied without a link to the original message. Always true if the message is forwarded to a secret chat
    public let sendCopy: Bool


    public init (
        fromChatId: Int64,
        inGameShare: Bool,
        messageId: Int64,
        removeCaption: Bool,
        sendCopy: Bool) {

        self.fromChatId = fromChatId
        self.inGameShare = inGameShare
        self.messageId = messageId
        self.removeCaption = removeCaption
        self.sendCopy = sendCopy
    }
}

