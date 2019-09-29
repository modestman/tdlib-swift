//
//  GetRemoteFile.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about a file by its remote ID; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message
public struct GetRemoteFile: Codable {

    /// File type, if known
    public let fileType: FileType

    /// Remote identifier of the file to get
    public let remoteFileId: String


    public init (
        fileType: FileType,
        remoteFileId: String) {

        self.fileType = fileType
        self.remoteFileId = remoteFileId
    }
}

