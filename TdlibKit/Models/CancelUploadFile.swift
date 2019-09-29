//
//  CancelUploadFile.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Stops the uploading of a file. Supported only for files uploaded by using uploadFile. For other files the behavior is undefined
public struct CancelUploadFile: Codable {

    /// Identifier of the file to stop uploading
    public let fileId: Int


    public init (fileId: Int) {
        self.fileId = fileId
    }
}

