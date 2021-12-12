//
//  Sessions.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of sessions
public struct Sessions: Codable {

    /// Number of days of inactivity before sessions will automatically be terminated; 1-366 days
    public let inactiveSessionTtlDays: Int

    /// List of sessions
    public let sessions: [Session]


    public init(
        inactiveSessionTtlDays: Int,
        sessions: [Session]
    ) {
        self.inactiveSessionTtlDays = inactiveSessionTtlDays
        self.sessions = sessions
    }
}

