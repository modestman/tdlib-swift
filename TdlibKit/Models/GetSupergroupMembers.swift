//
//  GetSupergroupMembers.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about members or banned users in a supergroup or channel. Can be used only if SupergroupFullInfo.can_get_members == true; additionally, administrator privileges may be required for some filters
public struct GetSupergroupMembers: Codable {

    /// The type of users to return. By default, supergroupMembersFilterRecent
    public let filter: SupergroupMembersFilter?

    /// The maximum number of users be returned; up to 200
    public let limit: Int?

    /// Number of users to skip
    public let offset: Int?

    /// Identifier of the supergroup or channel
    public let supergroupId: Int?


    public init(
        filter: SupergroupMembersFilter?,
        limit: Int?,
        offset: Int?,
        supergroupId: Int?
    ) {
        self.filter = filter
        self.limit = limit
        self.offset = offset
        self.supergroupId = supergroupId
    }
}

