//
//  GetJsonString.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Converts a JsonValue object to corresponding JSON-serialized string. This is an offline method. Can be called before authorization. Can be called synchronously
public struct GetJsonString: Codable {

    /// The JsonValue object
    public let jsonValue: JsonValue


    public init (jsonValue: JsonValue) {
        self.jsonValue = jsonValue
    }
}

