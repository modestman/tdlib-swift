//
//  SetNetworkType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sets the current network type. Can be called before authorization. Calling this method forces all network connections to reopen, mitigating the delay in switching between different networks, so it should be called whenever the network is changed, even if the network type remains the same. Network type is used to check whether the library can use the network at all and also for collecting detailed network data usage statistics
public struct SetNetworkType: Codable {

    /// The new network type. By default, networkTypeOther
    public let type: NetworkType


    public init(type: NetworkType) {
        self.type = type
    }
}

