//
//  TestReturnError.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the specified error and ensures that the Error object is used; for testing only. This is an offline method. Can be called before authorization. Can be called synchronously
public struct TestReturnError: Codable {

    /// The error to be returned
    public let error: Error


    public init (error: Error) {
        self.error = error
    }
}

