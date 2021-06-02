//
//  ImportContacts.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored
public struct ImportContacts: Codable {

    /// The list of contacts to import or edit; contacts' vCard are ignored and are not imported
    public let contacts: [Contact]


    public init(contacts: [Contact]) {
        self.contacts = contacts
    }
}

