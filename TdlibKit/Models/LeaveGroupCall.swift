//
//  LeaveGroupCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Leaves a group call
public struct LeaveGroupCall: Codable {

    /// Group call identifier
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

