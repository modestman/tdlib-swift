//
//  TestProxy.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
public struct TestProxy: Codable {

    /// Proxy server port
    public let port: Int

    /// Proxy server IP address
    public let server: String

    /// Proxy type
    public let type: ProxyType


    public init (
        port: Int,
        server: String,
        type: ProxyType) {

        self.port = port
        self.server = server
        self.type = type
    }
}

