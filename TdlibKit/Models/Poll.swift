//
//  Poll.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a poll
public struct Poll: Codable {

    /// Unique poll identifier
    public let id: TdInt64

    /// True, if the poll is closed
    public let isClosed: Bool

    /// List of poll answer options
    public let options: [PollOption]

    /// Poll question, 1-255 characters
    public let question: String

    /// Total number of voters, participating in the poll
    public let totalVoterCount: Int


    public init (
        id: TdInt64,
        isClosed: Bool,
        options: [PollOption],
        question: String,
        totalVoterCount: Int) {

        self.id = id
        self.isClosed = isClosed
        self.options = options
        self.question = question
        self.totalVoterCount = totalVoterCount
    }
}

