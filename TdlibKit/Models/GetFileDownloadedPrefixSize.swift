//
//  GetFileDownloadedPrefixSize.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns file downloaded prefix size from a given offset, in bytes
public struct GetFileDownloadedPrefixSize: Codable {

    /// Identifier of the file
    public let fileId: Int?

    /// Offset from which downloaded prefix size needs to be calculated
    public let offset: Int?


    public init(
        fileId: Int?,
        offset: Int?
    ) {
        self.fileId = fileId
        self.offset = offset
    }
}

