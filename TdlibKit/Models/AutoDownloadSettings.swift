//
//  AutoDownloadSettings.swift
//  tl2swift
//
//  Created by Code Generator
//

import Foundation


/// Contains auto-download settings
public struct AutoDownloadSettings: Codable {

    /// True, if the auto-download is enabled
    public let isAutoDownloadEnabled: Bool

    /// Maximum size of other file types to be auto-downloaded
    public let maxOtherFileSize: Int

    /// Maximum size of a photo file to be auto-downloaded
    public let maxPhotoFileSize: Int

    /// Maximum size of a video file to be auto-downloaded
    public let maxVideoFileSize: Int

    /// True, if the beginning of videos needs to be preloaded for instant playback
    public let preloadLargeVideos: Bool

    /// True, if the next audio track needs to be preloaded while the user is listening to an audio file
    public let preloadNextAudio: Bool

    /// True, if "use less data for calls" option needs to be enabled
    public let useLessDataForCalls: Bool


    public init (
        isAutoDownloadEnabled: Bool,
        maxOtherFileSize: Int,
        maxPhotoFileSize: Int,
        maxVideoFileSize: Int,
        preloadLargeVideos: Bool,
        preloadNextAudio: Bool,
        useLessDataForCalls: Bool) {

        self.isAutoDownloadEnabled = isAutoDownloadEnabled
        self.maxOtherFileSize = maxOtherFileSize
        self.maxPhotoFileSize = maxPhotoFileSize
        self.maxVideoFileSize = maxVideoFileSize
        self.preloadLargeVideos = preloadLargeVideos
        self.preloadNextAudio = preloadNextAudio
        self.useLessDataForCalls = useLessDataForCalls
    }
}

