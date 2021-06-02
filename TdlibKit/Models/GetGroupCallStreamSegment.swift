//
//  GetGroupCallStreamSegment.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a file with a segment of a group call stream in a modified OGG format
public struct GetGroupCallStreamSegment: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds
    public let scale: Int

    /// Point in time when the stream segment begins; Unix timestamp in milliseconds
    public let timeOffset: Int64


    public init(
        groupCallId: Int,
        scale: Int,
        timeOffset: Int64
    ) {
        self.groupCallId = groupCallId
        self.scale = scale
        self.timeOffset = timeOffset
    }
}

