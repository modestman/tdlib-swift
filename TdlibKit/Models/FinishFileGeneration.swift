//
//  FinishFileGeneration.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Finishes the file generation
public struct FinishFileGeneration: Codable {

    /// If passed, the file generation has failed and must be terminated; pass null if the file generation succeeded
    public let error: Error?

    /// The identifier of the generation process
    public let generationId: TdInt64?


    public init(
        error: Error?,
        generationId: TdInt64?
    ) {
        self.error = error
        self.generationId = generationId
    }
}

