//
//  GetFileMimeType.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously
public struct GetFileMimeType: Codable {

    /// The name of the file or path to the file
    public let fileName: String


    public init (fileName: String) {
        self.fileName = fileName
    }
}

