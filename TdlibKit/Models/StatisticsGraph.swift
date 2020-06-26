//
//  StatisticsGraph.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a statistics graph
public enum StatisticsGraph: Codable {

    /// A graph data
    case statisticsGraphData(StatisticsGraphData)

    /// The graph data to be asynchronously loaded through getChatStatisticsGraph
    case statisticsGraphAsync(StatisticsGraphAsync)

    /// An error message to be shown to the user instead of the graph
    case statisticsGraphError(StatisticsGraphError)


    private enum Kind: String, Codable {
        case statisticsGraphData
        case statisticsGraphAsync
        case statisticsGraphError
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .statisticsGraphData:
            let value = try StatisticsGraphData(from: decoder)
            self = .statisticsGraphData(value)
        case .statisticsGraphAsync:
            let value = try StatisticsGraphAsync(from: decoder)
            self = .statisticsGraphAsync(value)
        case .statisticsGraphError:
            let value = try StatisticsGraphError(from: decoder)
            self = .statisticsGraphError(value)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .statisticsGraphData(let value):
            try container.encode(Kind.statisticsGraphData, forKey: .type)
            try value.encode(to: encoder)
        case .statisticsGraphAsync(let value):
            try container.encode(Kind.statisticsGraphAsync, forKey: .type)
            try value.encode(to: encoder)
        case .statisticsGraphError(let value):
            try container.encode(Kind.statisticsGraphError, forKey: .type)
            try value.encode(to: encoder)
        }
    }
}

/// A graph data
public struct StatisticsGraphData: Codable {

    /// Graph data in JSON format
    public let jsonData: String

    /// If non-empty, a token which can be used to receive a zoomed in graph
    public let zoomToken: String


    public init (
        jsonData: String,
        zoomToken: String) {

        self.jsonData = jsonData
        self.zoomToken = zoomToken
    }
}

/// The graph data to be asynchronously loaded through getChatStatisticsGraph
public struct StatisticsGraphAsync: Codable {

    /// The token to use for data loading
    public let token: String


    public init (token: String) {
        self.token = token
    }
}

/// An error message to be shown to the user instead of the graph
public struct StatisticsGraphError: Codable {

    /// The error message
    public let errorMessage: String


    public init (errorMessage: String) {
        self.errorMessage = errorMessage
    }
}

