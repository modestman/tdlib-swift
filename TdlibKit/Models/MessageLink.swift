//
//  MessageLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains an HTTPS link to a message in a supergroup or channel
public struct MessageLink: Codable {

    /// True, if the link will work for non-members of the chat
    public let isPublic: Bool

    /// Message link
    public let link: String


    public init (
        isPublic: Bool,
        link: String) {

        self.isPublic = isPublic
        self.link = link
    }
}

