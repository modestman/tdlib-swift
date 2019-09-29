//
//  NetworkStatistics.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A full list of available network statistic entries
public struct NetworkStatistics: Codable {

    /// Network statistics entries
    public let entries: [NetworkStatisticsEntry]

    /// Point in time (Unix timestamp) when the app began collecting statistics
    public let sinceDate: Int


    public init (
        entries: [NetworkStatisticsEntry],
        sinceDate: Int) {

        self.entries = entries
        self.sinceDate = sinceDate
    }
}

