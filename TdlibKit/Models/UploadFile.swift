//
//  UploadFile.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Asynchronously uploads a file to the cloud without sending it in a message. updateFile will be used to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message
public struct UploadFile: Codable {

    /// File to upload
    public let file: InputFile?

    /// File type; pass null if unknown
    public let fileType: FileType?

    /// Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which uploadFile was called will be uploaded first
    public let priority: Int?


    public init(
        file: InputFile?,
        fileType: FileType?,
        priority: Int?
    ) {
        self.file = file
        self.fileType = fileType
        self.priority = priority
    }
}

