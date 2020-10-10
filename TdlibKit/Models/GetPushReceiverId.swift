//
//  GetPushReceiverId.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously
public struct GetPushReceiverId: Codable {

    /// JSON-encoded push notification payload
    public let payload: String


    public init (payload: String) {
        self.payload = payload
    }
}

