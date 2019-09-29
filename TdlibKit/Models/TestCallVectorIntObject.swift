//
//  TestCallVectorIntObject.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
public struct TestCallVectorIntObject: Codable {

    /// Vector of objects to return
    public let x: [TestInt]


    public init (x: [TestInt]) {
        self.x = x
    }
}

