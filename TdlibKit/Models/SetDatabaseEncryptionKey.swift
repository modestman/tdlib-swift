//
//  SetDatabaseEncryptionKey.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
public struct SetDatabaseEncryptionKey: Codable {

    /// New encryption key
    public let newEncryptionKey: Data


    public init (newEncryptionKey: Data) {
        self.newEncryptionKey = newEncryptionKey
    }
}

