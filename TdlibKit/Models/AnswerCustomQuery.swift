//
//  AnswerCustomQuery.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Answers a custom query; for bots only
public struct AnswerCustomQuery: Codable {

    /// Identifier of a custom query
    public let customQueryId: String

    /// JSON-serialized answer to the query
    public let data: String


    public init (
        customQueryId: String,
        data: String) {

        self.customQueryId = customQueryId
        self.data = data
    }
}

