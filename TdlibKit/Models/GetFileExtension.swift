//
//  GetFileExtension.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously
public struct GetFileExtension: Codable {

    /// The MIME type of the file
    public let mimeType: String


    public init (mimeType: String) {
        self.mimeType = mimeType
    }
}

