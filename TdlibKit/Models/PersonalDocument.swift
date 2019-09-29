//
//  PersonalDocument.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A personal document, containing some information about a user
public struct PersonalDocument: Codable {

    /// List of files containing the pages of the document
    public let files: [DatedFile]

    /// List of files containing a certified English translation of the document
    public let translation: [DatedFile]


    public init (
        files: [DatedFile],
        translation: [DatedFile]) {

        self.files = files
        self.translation = translation
    }
}

