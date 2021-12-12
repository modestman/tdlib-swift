//
//  MessageCalendarDay.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about found messages sent in a specific day
public struct MessageCalendarDay: Codable {

    /// First message sent in the day
    public let message: Message

    /// Total number of found messages sent in the day
    public let totalCount: Int


    public init(
        message: Message,
        totalCount: Int
    ) {
        self.message = message
        self.totalCount = totalCount
    }
}

