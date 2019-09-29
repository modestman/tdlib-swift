//
//  HttpUrl.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains an HTTP URL
public struct HttpUrl: Codable {

    /// The URL
    public let url: String


    public init (url: String) {
        self.url = url
    }
}

