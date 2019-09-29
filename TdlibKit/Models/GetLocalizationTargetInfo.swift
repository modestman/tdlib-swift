//
//  GetLocalizationTargetInfo.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Returns information about the current localization target. This is an offline request if only_local is true. Can be called before authorization
public struct GetLocalizationTargetInfo: Codable {

    /// If true, returns only locally available information without sending network requests
    public let onlyLocal: Bool


    public init (onlyLocal: Bool) {
        self.onlyLocal = onlyLocal
    }
}

