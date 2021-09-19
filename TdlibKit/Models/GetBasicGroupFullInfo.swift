//
//  GetBasicGroupFullInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns full information about a basic group by its identifier
public struct GetBasicGroupFullInfo: Codable {

    /// Basic group identifier
    public let basicGroupId: Int?


    public init(basicGroupId: Int?) {
        self.basicGroupId = basicGroupId
    }
}

