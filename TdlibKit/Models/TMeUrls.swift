//
//  TMeUrls.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a list of t.me URLs
public struct TMeUrls: Codable {

    /// List of URLs
    public let urls: [TMeUrl]


    public init (urls: [TMeUrl]) {
        self.urls = urls
    }
}

