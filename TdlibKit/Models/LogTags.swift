//
//  LogTags.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of available TDLib internal log tags
public struct LogTags: Codable {

    /// List of log tags
    public let tags: [String]


    public init (tags: [String]) {
        self.tags = tags
    }
}

