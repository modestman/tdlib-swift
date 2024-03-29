//
//  GetWebPageInstantView.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns an instant view version of a web page if available. Returns a 404 error if the web page has no instant view page
public struct GetWebPageInstantView: Codable {

    /// If true, the full instant view for the web page will be returned
    public let forceFull: Bool?

    /// The web page URL
    public let url: String?


    public init(
        forceFull: Bool?,
        url: String?
    ) {
        self.forceFull = forceFull
        self.url = url
    }
}

