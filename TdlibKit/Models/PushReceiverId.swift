//
//  PushReceiverId.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification
public struct PushReceiverId: Codable {

    /// The globally unique identifier of push notification subscription
    public let id: String


    public init (id: String) {
        self.id = id
    }
}

