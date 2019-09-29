//
//  GetCurrentState.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns all updates needed to restore current TDLib state, i.e. all actual UpdateAuthorizationState/UpdateUser/UpdateNewChat and others. This is especially usefull if TDLib is run in a separate process. This is an offline method. Can be called before authorization
public struct GetCurrentState: Codable {


    public init () {
    }
}

