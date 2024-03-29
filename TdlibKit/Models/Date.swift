//
//  Date.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a date according to the Gregorian calendar
public struct Date: Codable {

    /// Day of the month; 1-31
    public let day: Int

    /// Month; 1-12
    public let month: Int

    /// Year; 1-9999
    public let year: Int


    public init(
        day: Int,
        month: Int,
        year: Int
    ) {
        self.day = day
        self.month = month
        self.year = year
    }
}

