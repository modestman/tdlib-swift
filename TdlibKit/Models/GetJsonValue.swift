//
//  GetJsonValue.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Converts a JSON-serialized string to corresponding JsonValue object. This is an offline method. Can be called before authorization. Can be called synchronously
public struct GetJsonValue: Codable {

    /// The JSON-serialized string
    public let json: String


    public init (json: String) {
        self.json = json
    }
}

