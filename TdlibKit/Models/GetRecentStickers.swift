//
//  GetRecentStickers.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of recently used stickers
public struct GetRecentStickers: Codable {

    /// Pass true to return stickers and masks that were recently attached to photos or video files; pass false to return recently sent stickers
    public let isAttached: Bool


    public init (isAttached: Bool) {
        self.isAttached = isAttached
    }
}

