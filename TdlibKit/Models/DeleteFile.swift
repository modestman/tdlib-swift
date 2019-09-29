//
//  DeleteFile.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Deletes a file from the TDLib file cache
public struct DeleteFile: Codable {

    /// Identifier of the file to delete
    public let fileId: Int


    public init (fileId: Int) {
        self.fileId = fileId
    }
}

