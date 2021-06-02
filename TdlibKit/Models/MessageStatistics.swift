//
//  MessageStatistics.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A detailed statistics about a message
public struct MessageStatistics: Codable {

    /// A graph containing number of message views and shares
    public let messageInteractionGraph: StatisticalGraph


    public init(messageInteractionGraph: StatisticalGraph) {
        self.messageInteractionGraph = messageInteractionGraph
    }
}

