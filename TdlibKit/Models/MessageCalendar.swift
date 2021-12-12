//
//  MessageCalendar.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about found messages, splitted by days according to the option "utc_time_offset"
public struct MessageCalendar: Codable {

    /// Information about messages sent
    public let days: [MessageCalendarDay]

    /// Total number of found messages
    public let totalCount: Int


    public init(
        days: [MessageCalendarDay],
        totalCount: Int
    ) {
        self.days = days
        self.totalCount = totalCount
    }
}

