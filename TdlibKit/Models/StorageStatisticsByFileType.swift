//
//  StorageStatisticsByFileType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains the storage usage statistics for a specific file type
public struct StorageStatisticsByFileType: Codable {

    /// Total number of files
    public let count: Int

    /// File type
    public let fileType: FileType

    /// Total size of the files
    public let size: Int64


    public init(
        count: Int,
        fileType: FileType,
        size: Int64
    ) {
        self.count = count
        self.fileType = fileType
        self.size = size
    }
}

