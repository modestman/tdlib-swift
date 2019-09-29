//
//  GetBasicGroup.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
public struct GetBasicGroup: Codable {

    /// Basic group identifier
    public let basicGroupId: Int


    public init (basicGroupId: Int) {
        self.basicGroupId = basicGroupId
    }
}

