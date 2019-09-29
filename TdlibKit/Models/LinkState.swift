//
//  LinkState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Represents the relationship between user A and user B. For incoming_link, user A is the current user; for outgoing_link, user B is the current user
public enum LinkState: Codable {

    /// The phone number of user A is not known to user B
    case linkStateNone

    /// The phone number of user A is known but that number has not been saved to the contact list of user B
    case linkStateKnowsPhoneNumber

    /// The phone number of user A has been saved to the contact list of user B
    case linkStateIsContact


    private enum Kind: String, Codable {
        case linkStateNone
        case linkStateKnowsPhoneNumber
        case linkStateIsContact
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DtoCodingKeys.self)
        let type = try container.decode(Kind.self, forKey: .type)
        switch type {
        case .linkStateNone:
            self = .linkStateNone
        case .linkStateKnowsPhoneNumber:
            self = .linkStateKnowsPhoneNumber
        case .linkStateIsContact:
            self = .linkStateIsContact
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: DtoCodingKeys.self)
        switch self {
        case .linkStateNone:
            try container.encode(Kind.linkStateNone, forKey: .type)
        case .linkStateKnowsPhoneNumber:
            try container.encode(Kind.linkStateKnowsPhoneNumber, forKey: .type)
        case .linkStateIsContact:
            try container.encode(Kind.linkStateIsContact, forKey: .type)
        }
    }
}

