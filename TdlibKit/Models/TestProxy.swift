//
//  TestProxy.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sends a simple network request to the Telegram servers via proxy; for testing only. Can be called before authorization
public struct TestProxy: Codable {

    /// Identifier of a datacenter, with which to test connection
    public let dcId: Int?

    /// Proxy server port
    public let port: Int?

    /// Proxy server IP address
    public let server: String?

    /// The maximum overall timeout for the request
    public let timeout: Double?

    /// Proxy type
    public let type: ProxyType?


    public init(
        dcId: Int?,
        port: Int?,
        server: String?,
        timeout: Double?,
        type: ProxyType?
    ) {
        self.dcId = dcId
        self.port = port
        self.server = server
        self.timeout = timeout
        self.type = type
    }
}

