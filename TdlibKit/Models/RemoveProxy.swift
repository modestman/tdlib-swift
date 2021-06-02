//
//  RemoveProxy.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes a proxy server. Can be called before authorization
public struct RemoveProxy: Codable {

    /// Proxy identifier
    public let proxyId: Int


    public init(proxyId: Int) {
        self.proxyId = proxyId
    }
}

