//
//  GetMessageLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a public or private message link. Can be called for any internal link of the type internalLinkTypeMessage
public struct GetMessageLinkInfo: Codable {

    /// The message link
    public let url: String?


    public init(url: String?) {
        self.url = url
    }
}

