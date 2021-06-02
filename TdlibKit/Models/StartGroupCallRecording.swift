//
//  StartGroupCallRecording.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Starts recording of an active group call. Requires groupCall.can_be_managed group call flag
public struct StartGroupCallRecording: Codable {

    /// Group call identifier
    public let groupCallId: Int

    /// Group call recording title; 0-64 characters
    public let title: String


    public init(
        groupCallId: Int,
        title: String
    ) {
        self.groupCallId = groupCallId
        self.title = title
    }
}

