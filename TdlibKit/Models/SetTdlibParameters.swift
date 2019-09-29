//
//  SetTdlibParameters.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters
public struct SetTdlibParameters: Codable {

    /// Parameters
    public let parameters: TdlibParameters


    public init (parameters: TdlibParameters) {
        self.parameters = parameters
    }
}

