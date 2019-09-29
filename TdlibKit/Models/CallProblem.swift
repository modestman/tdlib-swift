//
//  CallProblem.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes the exact type of a problem with a call
public enum CallProblem: Codable {

    /// The user heard their own voice
    case callProblemEcho

    /// The user heard background noise
    case callProblemNoise

    /// The other side kept disappearing
    case callProblemInterruptions

    /// The speech was distorted
    case callProblemDistortedSpeech

    /// The user couldn't hear the other side
    case callProblemSilentLocal

    /// The other side couldn't hear the user
    case callProblemSilentRemote

    /// The call ended unexpectedly
    case callProblemDropped


    private enum Kind: String, Codable {
        case callProblemEcho
        case callProblemNoise
        case callProblemInterruptions
        case callProblemDistortedSpeech
        case callProblemSilentLocal
        case callProblemSilentRemote
        case callProblemDropped
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .callProblemEcho:
            self = .callProblemEcho
        case .callProblemNoise:
            self = .callProblemNoise
        case .callProblemInterruptions:
            self = .callProblemInterruptions
        case .callProblemDistortedSpeech:
            self = .callProblemDistortedSpeech
        case .callProblemSilentLocal:
            self = .callProblemSilentLocal
        case .callProblemSilentRemote:
            self = .callProblemSilentRemote
        case .callProblemDropped:
            self = .callProblemDropped
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .callProblemEcho:
            try container.encode(Kind.callProblemEcho, forKey: .type)
        case .callProblemNoise:
            try container.encode(Kind.callProblemNoise, forKey: .type)
        case .callProblemInterruptions:
            try container.encode(Kind.callProblemInterruptions, forKey: .type)
        case .callProblemDistortedSpeech:
            try container.encode(Kind.callProblemDistortedSpeech, forKey: .type)
        case .callProblemSilentLocal:
            try container.encode(Kind.callProblemSilentLocal, forKey: .type)
        case .callProblemSilentRemote:
            try container.encode(Kind.callProblemSilentRemote, forKey: .type)
        case .callProblemDropped:
            try container.encode(Kind.callProblemDropped, forKey: .type)
        }
    }
}

