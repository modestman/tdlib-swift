//
//  TestSquareInt.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the squared received number; for testing only. This is an offline method. Can be called before authorization
public struct TestSquareInt: Codable {

    /// Number to square
    public let x: Int?


    public init(x: Int?) {
        self.x = x
    }
}

