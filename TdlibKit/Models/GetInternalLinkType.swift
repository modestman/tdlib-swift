//
//  GetInternalLinkType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about the type of an internal link. Returns a 404 error if the link is not internal. Can be called before authorization
public struct GetInternalLinkType: Codable {

    /// The link
    public let link: String?


    public init(link: String?) {
        self.link = link
    }
}

