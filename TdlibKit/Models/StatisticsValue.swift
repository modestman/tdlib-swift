//
//  StatisticsValue.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A statistics value
public struct StatisticsValue: Codable {

    /// The growth rate of the value, as a percentage
    public let growthRatePercentage: Double

    /// The value for the previous day
    public let previousValue: Double

    /// The value
    public let value: Double


    public init (
        growthRatePercentage: Double,
        previousValue: Double,
        value: Double) {

        self.growthRatePercentage = growthRatePercentage
        self.previousValue = previousValue
        self.value = value
    }
}

