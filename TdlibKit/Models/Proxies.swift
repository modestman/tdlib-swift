//
//  Proxies.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a list of proxy servers
public struct Proxies: Codable {

    /// List of proxy servers
    public let proxies: [Proxy]


    public init(proxies: [Proxy]) {
        self.proxies = proxies
    }
}

