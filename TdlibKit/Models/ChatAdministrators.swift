//
//  ChatAdministrators.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents a list of chat administrators
public struct ChatAdministrators: Codable {

    /// A list of chat administrators
    public let administrators: [ChatAdministrator]


    public init (administrators: [ChatAdministrator]) {
        self.administrators = administrators
    }
}

