//
//  AddProxy.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds a proxy server for network requests. Can be called before authorization
public struct AddProxy: Codable {

    /// True, if the proxy needs to be enabled
    public let enable: Bool?

    /// Proxy server port
    public let port: Int?

    /// Proxy server IP address
    public let server: String?

    /// Proxy type
    public let type: ProxyType?


    public init(
        enable: Bool?,
        port: Int?,
        server: String?,
        type: ProxyType?
    ) {
        self.enable = enable
        self.port = port
        self.server = server
        self.type = type
    }
}

