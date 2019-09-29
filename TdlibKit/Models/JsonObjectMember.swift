//
//  JsonObjectMember.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents one member of a JSON object
public struct JsonObjectMember: Codable {

    /// Member's key
    public let key: String

    /// Member's value
    public let value: JsonValue


    public init (
        key: String,
        value: JsonValue) {

        self.key = key
        self.value = value
    }
}

