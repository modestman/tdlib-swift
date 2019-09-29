//
//  Sessions.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of sessions
public struct Sessions: Codable {

    /// List of sessions
    public let sessions: [Session]


    public init (sessions: [Session]) {
        self.sessions = sessions
    }
}

