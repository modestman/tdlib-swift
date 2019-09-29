//
//  BackgroundType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a type of a background
public enum BackgroundType: Codable {

    /// A wallpaper in JPEG format
    case backgroundTypeWallpaper(BackgroundTypeWallpaper)

    /// A PNG pattern to be combined with the color chosen by the user
    case backgroundTypePattern(BackgroundTypePattern)

    /// A solid background
    case backgroundTypeSolid(BackgroundTypeSolid)


    private enum Kind: String, Codable {
        case backgroundTypeWallpaper
        case backgroundTypePattern
        case backgroundTypeSolid
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .backgroundTypeWallpaper:
            let value = try BackgroundTypeWallpaper(from: decoder)
            self = .backgroundTypeWallpaper(value)
        case .backgroundTypePattern:
            let value = try BackgroundTypePattern(from: decoder)
            self = .backgroundTypePattern(value)
        case .backgroundTypeSolid:
            let value = try BackgroundTypeSolid(from: decoder)
            self = .backgroundTypeSolid(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .backgroundTypeWallpaper(let value):
            try container.encode(Kind.backgroundTypeWallpaper, forKey: .type)
            try value.encode(to: encoder)
        case .backgroundTypePattern(let value):
            try container.encode(Kind.backgroundTypePattern, forKey: .type)
            try value.encode(to: encoder)
        case .backgroundTypeSolid(let value):
            try container.encode(Kind.backgroundTypeSolid, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A wallpaper in JPEG format
public struct BackgroundTypeWallpaper: Codable {

    /// True, if the wallpaper must be downscaled to fit in 450x450 square and then box-blurred with radius 12
    public let isBlurred: Bool

    /// True, if the background needs to be slightly moved when device is rotated
    public let isMoving: Bool


    public init (
        isBlurred: Bool,
        isMoving: Bool) {

        self.isBlurred = isBlurred
        self.isMoving = isMoving
    }
}

/// A PNG pattern to be combined with the color chosen by the user
public struct BackgroundTypePattern: Codable {

    /// Main color of the background in RGB24 format
    public let color: Int

    /// Intensity of the pattern when it is shown above the main background color, 0-100
    public let intensity: Int

    /// True, if the background needs to be slightly moved when device is rotated
    public let isMoving: Bool


    public init (
        color: Int,
        intensity: Int,
        isMoving: Bool) {

        self.color = color
        self.intensity = intensity
        self.isMoving = isMoving
    }
}

/// A solid background
public struct BackgroundTypeSolid: Codable {

    /// A color of the background in RGB24 format
    public let color: Int


    public init (color: Int) {
        self.color = color
    }
}

