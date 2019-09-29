//
//  CallConnection.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes the address of UDP reflectors
public struct CallConnection: Codable {

    /// Reflector identifier
    public let id: String

    /// IPv4 reflector address
    public let ip: String

    /// IPv6 reflector address
    public let ipv6: String

    /// Connection peer tag
    public let peerTag: Data

    /// Reflector port number
    public let port: Int


    public init (
        id: String,
        ip: String,
        ipv6: String,
        peerTag: Data,
        port: Int) {

        self.id = id
        self.ip = ip
        self.ipv6 = ipv6
        self.peerTag = peerTag
        self.port = port
    }
}

