//
//  GroupCallJoinResponseCandidate.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Describes a join response candidate for interaction with tgcalls
public struct GroupCallJoinResponseCandidate: Codable {

    /// Value of the field component
    public let component: String

    /// Value of the field foundation
    public let foundation: String

    /// Value of the field generation
    public let generation: String

    /// Value of the field id
    public let id: String

    /// Value of the field ip
    public let ip: String

    /// Value of the field network
    public let network: String

    /// Value of the field port
    public let port: String

    /// Value of the field priority
    public let priority: String

    /// Value of the field protocol
    public let `protocol`: String

    /// Value of the field rel_addr
    public let relAddr: String

    /// Value of the field rel_port
    public let relPort: String

    /// Value of the field tcp_type
    public let tcpType: String

    /// Value of the field type
    public let type: String


    public init(
        component: String,
        foundation: String,
        generation: String,
        id: String,
        ip: String,
        network: String,
        port: String,
        priority: String,
        `protocol`: String,
        relAddr: String,
        relPort: String,
        tcpType: String,
        type: String
    ) {
        self.component = component
        self.foundation = foundation
        self.generation = generation
        self.id = id
        self.ip = ip
        self.network = network
        self.port = port
        self.priority = priority
        self.`protocol` = `protocol`
        self.relAddr = relAddr
        self.relPort = relPort
        self.tcpType = tcpType
        self.type = type
    }
}

