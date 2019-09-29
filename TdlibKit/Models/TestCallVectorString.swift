//
//  TestCallVectorString.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorString: Codable {

    /// Vector of strings to return
    public let x: [String]


    public init (x: [String]) {
        self.x = x
    }
}

