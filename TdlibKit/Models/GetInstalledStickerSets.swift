//
//  GetInstalledStickerSets.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of installed sticker sets
public struct GetInstalledStickerSets: Codable {

    /// Pass true to return mask sticker sets; pass false to return ordinary sticker sets
    public let isMasks: Bool


    public init (isMasks: Bool) {
        self.isMasks = isMasks
    }
}

