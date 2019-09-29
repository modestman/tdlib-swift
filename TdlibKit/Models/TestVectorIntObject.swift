//
//  TestVectorIntObject.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A simple object containing a vector of objects that hold a number; for testing only
public struct TestVectorIntObject: Codable {

    /// Vector of objects
    public let value: [TestInt]


    public init (value: [TestInt]) {
        self.value = value
    }
}

