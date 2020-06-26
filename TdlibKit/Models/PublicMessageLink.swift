//
//  PublicMessageLink.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a public HTTPS link to a message in a supergroup or channel with a username
public struct PublicMessageLink: Codable {

    /// HTML-code for embedding the message
    public let html: String

    /// Message link
    public let link: String


    public init (
        html: String,
        link: String) {

        self.html = html
        self.link = link
    }
}

