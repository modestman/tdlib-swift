//
//  FilePart.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains a part of a file
public struct FilePart: Codable {

    /// File bytes
    public let data: Data


    public init (data: Data) {
        self.data = data
    }
}

