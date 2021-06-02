//
//  PollOption.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes one answer option of a poll
public struct PollOption: Codable {

    /// True, if the option is being chosen by a pending setPollAnswer request
    public let isBeingChosen: Bool

    /// True, if the option was chosen by the user
    public let isChosen: Bool

    /// Option text; 1-100 characters
    public let text: String

    /// The percentage of votes for this option; 0-100
    public let votePercentage: Int

    /// Number of voters for this option, available only for closed or voted polls
    public let voterCount: Int


    public init(
        isBeingChosen: Bool,
        isChosen: Bool,
        text: String,
        votePercentage: Int,
        voterCount: Int
    ) {
        self.isBeingChosen = isBeingChosen
        self.isChosen = isChosen
        self.text = text
        self.votePercentage = votePercentage
        self.voterCount = voterCount
    }
}

