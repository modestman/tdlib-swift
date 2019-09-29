//
//  TerminateSession.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Terminates a session of the current user
public struct TerminateSession: Codable {

    /// Session identifier
    public let sessionId: String


    public init (sessionId: String) {
        self.sessionId = sessionId
    }
}

