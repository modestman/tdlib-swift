//
//  TestCallBytes.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
public struct TestCallBytes: Codable {

    /// Bytes to return
    public let x: Data


    public init(x: Data) {
        self.x = x
    }
}

