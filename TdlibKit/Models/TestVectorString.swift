//
//  TestVectorString.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A simple object containing a vector of strings; for testing only
public struct TestVectorString: Codable {

    /// Vector of strings
    public let value: [String]


    public init (value: [String]) {
        self.value = value
    }
}

