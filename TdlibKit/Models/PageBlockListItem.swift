//
//  PageBlockListItem.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an item of a list page block
public struct PageBlockListItem: Codable {

    /// Item label
    public let label: String

    /// Item blocks
    public let pageBlocks: [PageBlock]


    public init (
        label: String,
        pageBlocks: [PageBlock]) {

        self.label = label
        self.pageBlocks = pageBlocks
    }
}

