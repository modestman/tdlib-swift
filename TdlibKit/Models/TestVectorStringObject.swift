//
//  TestVectorStringObject.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A simple object containing a vector of objects that hold a string; for testing only
public struct TestVectorStringObject: Codable {

    /// Vector of objects
    public let value: [TestString]


    public init (value: [TestString]) {
        self.value = value
    }
}

