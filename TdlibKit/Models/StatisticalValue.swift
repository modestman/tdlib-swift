//
//  StatisticalValue.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A value with information about its recent changes
public struct StatisticalValue: Codable {

    /// The growth rate of the value, as a percentage
    public let growthRatePercentage: Double

    /// The value for the previous day
    public let previousValue: Double

    /// The current value
    public let value: Double


    public init(
        growthRatePercentage: Double,
        previousValue: Double,
        value: Double
    ) {
        self.growthRatePercentage = growthRatePercentage
        self.previousValue = previousValue
        self.value = value
    }
}

