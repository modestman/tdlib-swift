//
//  ChatReportReason.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes the reason why a chat is reported
public enum ChatReportReason: Codable {

    /// The chat contains spam messages
    case chatReportReasonSpam

    /// The chat promotes violence
    case chatReportReasonViolence

    /// The chat contains pornographic messages
    case chatReportReasonPornography

    /// The chat has child abuse related content
    case chatReportReasonChildAbuse

    /// The chat contains copyrighted content
    case chatReportReasonCopyright

    /// A custom reason provided by the user
    case chatReportReasonCustom(ChatReportReasonCustom)


    private enum Kind: String, Codable {
        case chatReportReasonSpam
        case chatReportReasonViolence
        case chatReportReasonPornography
        case chatReportReasonChildAbuse
        case chatReportReasonCopyright
        case chatReportReasonCustom
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .chatReportReasonSpam:
            self = .chatReportReasonSpam
        case .chatReportReasonViolence:
            self = .chatReportReasonViolence
        case .chatReportReasonPornography:
            self = .chatReportReasonPornography
        case .chatReportReasonChildAbuse:
            self = .chatReportReasonChildAbuse
        case .chatReportReasonCopyright:
            self = .chatReportReasonCopyright
        case .chatReportReasonCustom:
            let value = try ChatReportReasonCustom(from: decoder)
            self = .chatReportReasonCustom(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .chatReportReasonSpam:
            try container.encode(Kind.chatReportReasonSpam, forKey: .type)
        case .chatReportReasonViolence:
            try container.encode(Kind.chatReportReasonViolence, forKey: .type)
        case .chatReportReasonPornography:
            try container.encode(Kind.chatReportReasonPornography, forKey: .type)
        case .chatReportReasonChildAbuse:
            try container.encode(Kind.chatReportReasonChildAbuse, forKey: .type)
        case .chatReportReasonCopyright:
            try container.encode(Kind.chatReportReasonCopyright, forKey: .type)
        case .chatReportReasonCustom(let value):
            try container.encode(Kind.chatReportReasonCustom, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A custom reason provided by the user
public struct ChatReportReasonCustom: Codable {

    /// Report text
    public let text: String


    public init (text: String) {
        self.text = text
    }
}

