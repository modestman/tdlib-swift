//
//  CleanFileName.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. This is an offline method. Can be called before authorization. Can be called synchronously
public struct CleanFileName: Codable {

    /// File name or path to the file
    public let fileName: String


    public init (fileName: String) {
        self.fileName = fileName
    }
}

