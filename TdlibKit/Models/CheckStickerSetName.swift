//
//  CheckStickerSetName.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Checks whether a name can be used for a new sticker set
public struct CheckStickerSetName: Codable {

    /// Name to be checked
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

