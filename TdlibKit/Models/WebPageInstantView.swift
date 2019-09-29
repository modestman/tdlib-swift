//
//  WebPageInstantView.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes an instant view page for a web page
public struct WebPageInstantView: Codable {

    /// True, if the instant view contains the full page. A network request might be needed to get the full web page instant view
    public let isFull: Bool

    /// True, if the instant view must be shown from right to left
    public let isRtl: Bool

    /// Content of the web page
    public let pageBlocks: [PageBlock]

    /// Instant view URL; may be different from WebPage.url and must be used for the correct anchors handling
    public let url: String

    /// Version of the instant view, currently can be 1 or 2
    public let version: Int


    public init (
        isFull: Bool,
        isRtl: Bool,
        pageBlocks: [PageBlock],
        url: String,
        version: Int) {

        self.isFull = isFull
        self.isRtl = isRtl
        self.pageBlocks = pageBlocks
        self.url = url
        self.version = version
    }
}

