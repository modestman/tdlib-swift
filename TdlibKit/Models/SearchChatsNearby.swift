//
//  SearchChatsNearby.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns a list of users and location-based supergroups nearby. The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby. The request must be sent again every 25 seconds with adjusted location to not miss new chats
public struct SearchChatsNearby: Codable {

    /// Current user location
    public let location: Location?


    public init(location: Location?) {
        self.location = location
    }
}

