//
//  ChatReportSpamState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains information about the availability of the "Report spam" action for a chat
public struct ChatReportSpamState: Codable {

    /// True, if a prompt with the "Report spam" action should be shown to the user
    public let canReportSpam: Bool


    public init (canReportSpam: Bool) {
        self.canReportSpam = canReportSpam
    }
}

