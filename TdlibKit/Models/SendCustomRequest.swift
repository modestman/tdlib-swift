//
//  SendCustomRequest.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a custom request; for bots only
public struct SendCustomRequest: Codable {

    /// The method name
    public let method: String

    /// JSON-serialized method parameters
    public let parameters: String


    public init(
        method: String,
        parameters: String
    ) {
        self.method = method
        self.parameters = parameters
    }
}

