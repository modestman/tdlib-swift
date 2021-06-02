//
//  DateRange.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a date range
public struct DateRange: Codable {

    /// Point in time (Unix timestamp) at which the date range ends
    public let endDate: Int

    /// Point in time (Unix timestamp) at which the date range begins
    public let startDate: Int


    public init(
        endDate: Int,
        startDate: Int
    ) {
        self.endDate = endDate
        self.startDate = startDate
    }
}

