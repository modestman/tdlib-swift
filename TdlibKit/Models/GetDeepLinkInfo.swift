//
//  GetDeepLinkInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization
public struct GetDeepLinkInfo: Codable {

    /// The link
    public let link: String


    public init (link: String) {
        self.link = link
    }
}

