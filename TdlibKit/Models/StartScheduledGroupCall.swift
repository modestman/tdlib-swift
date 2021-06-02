//
//  StartScheduledGroupCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Starts a scheduled group call
public struct StartScheduledGroupCall: Codable {

    /// Group call identifier
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

