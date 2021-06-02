//
//  GetFile.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a file; this is an offline request
public struct GetFile: Codable {

    /// Identifier of the file to get
    public let fileId: Int


    public init(fileId: Int) {
        self.fileId = fileId
    }
}

