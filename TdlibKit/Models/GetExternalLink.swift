//
//  GetExternalLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an HTTP link. Use the method getExternalLinkInfo to find whether a prior user confirmation is needed
public struct GetExternalLink: Codable {

    /// True, if the current user allowed the bot, returned in getExternalLinkInfo, to send them messages
    public let allowWriteAccess: Bool

    /// The HTTP link
    public let link: String


    public init(
        allowWriteAccess: Bool,
        link: String
    ) {
        self.allowWriteAccess = allowWriteAccess
        self.link = link
    }
}
