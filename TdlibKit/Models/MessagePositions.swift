//
//  MessagePositions.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of message positions
public struct MessagePositions: Codable {

    /// List of message positions
    public let positions: [MessagePosition]

    /// Total count of messages found
    public let totalCount: Int


    public init(
        positions: [MessagePosition],
        totalCount: Int
    ) {
        self.positions = positions
        self.totalCount = totalCount
    }
}

