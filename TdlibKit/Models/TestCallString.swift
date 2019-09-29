//
//  TestCallString.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the received string; for testing only. This is an offline method. Can be called before authorization
public struct TestCallString: Codable {

    /// String to return
    public let x: String


    public init (x: String) {
        self.x = x
    }
}

