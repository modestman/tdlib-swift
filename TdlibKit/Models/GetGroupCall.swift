//
//  GetGroupCall.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a group call
public struct GetGroupCall: Codable {

    /// Group call identifier
    public let groupCallId: Int


    public init(groupCallId: Int) {
        self.groupCallId = groupCallId
    }
}

