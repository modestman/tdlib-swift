//
//  EndGroupCallRecording.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag
public struct EndGroupCallRecording: Codable {

    /// Group call identifier
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

