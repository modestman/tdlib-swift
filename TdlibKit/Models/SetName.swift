//
//  SetName.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Changes the first and last name of the current user
public struct SetName: Codable {

    /// The new value of the first name for the current user; 1-64 characters
    public let firstName: String?

    /// The new value of the optional last name for the current user; 0-64 characters
    public let lastName: String?


    public init(
        firstName: String?,
        lastName: String?
    ) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

