//
//  GetUserFullInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns full information about a user by their identifier
public struct GetUserFullInfo: Codable {

    /// User identifier
    public let userId: Int?


    public init(userId: Int?) {
        self.userId = userId
    }
}

