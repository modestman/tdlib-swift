//
//  ViewTrendingStickerSets.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Informs the server that some trending sticker sets have been viewed by the user
public struct ViewTrendingStickerSets: Codable {

    /// Identifiers of viewed trending sticker sets
    public let stickerSetIds: [String]


    public init (stickerSetIds: [String]) {
        self.stickerSetIds = stickerSetIds
    }
}

