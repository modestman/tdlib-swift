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
    public let customQueryId: TdInt64

    /// JSON-serialized answer to the query
    public let data: String


    public init (
        customQueryId: TdInt64,
        data: String) {

        self.customQueryId = customQueryId
        self.data = data
    }
}

