//
//  SetFileGenerationProgress.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Informs TDLib on a file generation prograss
public struct SetFileGenerationProgress: Codable {

    /// Expected size of the generated file, in bytes; 0 if unknown
    public let expectedSize: Int

    /// The identifier of the generation process
    public let generationId: String

    /// The number of bytes already generated
    public let localPrefixSize: Int


    public init (
        expectedSize: Int,
        generationId: String,
        localPrefixSize: Int) {

        self.expectedSize = expectedSize
        self.generationId = generationId
        self.localPrefixSize = localPrefixSize
    }
}

