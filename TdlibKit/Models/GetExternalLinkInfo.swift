//
//  GetExternalLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about an action to be done when the current user clicks an external link. Don't use this method for links from secret chats if web page preview is disabled in secret chats
public struct GetExternalLinkInfo: Codable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

