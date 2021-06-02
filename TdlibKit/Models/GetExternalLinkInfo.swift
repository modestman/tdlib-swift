//
//  GetExternalLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about an action to be done when the current user clicks an HTTP link. This method can be used to automatically authorize the current user on a website. Don't use this method for links from secret chats if link preview is disabled in secret chats
public struct GetExternalLinkInfo: Codable {

    /// The HTTP link
    public let link: String


    public init(link: String) {
        self.link = link
    }
}

