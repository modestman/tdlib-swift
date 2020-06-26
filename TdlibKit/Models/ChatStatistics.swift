//
//  ChatStatistics.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// A detailed statistics about a chat
public struct ChatStatistics: Codable {

    /// A percentage of users with enabled notifications for the chat
    public let enabledNotificationsPercentage: Double

    /// A graph containing number of views of associated with the chat instant views
    public let instantViewInteractionGraph: StatisticsGraph

    /// A graph containing number of new member joins per source
    public let joinBySourceGraph: StatisticsGraph

    /// A graph containing number of members joined and left the chat
    public let joinGraph: StatisticsGraph

    /// A graph containing number of users viewed chat messages per language
    public let languageGraph: StatisticsGraph

    /// Mean number of times the recently sent messages was shared
    public let meanShareCount: StatisticsValue

    /// Mean number of times the recently sent messages was viewed
    public let meanViewCount: StatisticsValue

    /// Number of members in the chat
    public let memberCount: StatisticsValue

    /// A graph containing number of members in the chat
    public let memberCountGraph: StatisticsGraph

    /// A graph containing number of chat message views and shares
    public let messageInteractionGraph: StatisticsGraph

    /// A graph containing number of members muted and unmuted the chat
    public let muteGraph: StatisticsGraph

    /// A period to which the statistics applies
    public let period: DateRange

    /// Detailed statistics about number of views and shares of recently sent messages
    public let recentMessageInteractions: [ChatStatisticsMessageInteractionCounters]

    /// A graph containing number of message views in a given hour in the last two weeks
    public let viewCountByHourGraph: StatisticsGraph

    /// A graph containing number of message views per source
    public let viewCountBySourceGraph: StatisticsGraph


    public init (
        enabledNotificationsPercentage: Double,
        instantViewInteractionGraph: StatisticsGraph,
        joinBySourceGraph: StatisticsGraph,
        joinGraph: StatisticsGraph,
        languageGraph: StatisticsGraph,
        meanShareCount: StatisticsValue,
        meanViewCount: StatisticsValue,
        memberCount: StatisticsValue,
        memberCountGraph: StatisticsGraph,
        messageInteractionGraph: StatisticsGraph,
        muteGraph: StatisticsGraph,
        period: DateRange,
        recentMessageInteractions: [ChatStatisticsMessageInteractionCounters],
        viewCountByHourGraph: StatisticsGraph,
        viewCountBySourceGraph: StatisticsGraph) {

        self.enabledNotificationsPercentage = enabledNotificationsPercentage
        self.instantViewInteractionGraph = instantViewInteractionGraph
        self.joinBySourceGraph = joinBySourceGraph
        self.joinGraph = joinGraph
        self.languageGraph = languageGraph
        self.meanShareCount = meanShareCount
        self.meanViewCount = meanViewCount
        self.memberCount = memberCount
        self.memberCountGraph = memberCountGraph
        self.messageInteractionGraph = messageInteractionGraph
        self.muteGraph = muteGraph
        self.period = period
        self.recentMessageInteractions = recentMessageInteractions
        self.viewCountByHourGraph = viewCountByHourGraph
        self.viewCountBySourceGraph = viewCountBySourceGraph
    }
}

