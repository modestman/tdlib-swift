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

    /// The maximum size of other file types to be auto-downloaded, in bytes
    public let maxOtherFileSize: Int

    /// The maximum size of a photo file to be auto-downloaded, in bytes
    public let maxPhotoFileSize: Int

    /// The maximum size of a video file to be auto-downloaded, in bytes
    public let maxVideoFileSize: Int

    /// True, if the beginning of video files needs to be preloaded for instant playback
    public let preloadLargeVideos: Bool

    /// True, if the next audio track needs to be preloaded while the user is listening to an audio file
    public let preloadNextAudio: Bool

    /// True, if "use less data for calls" option needs to be enabled
    public let useLessDataForCalls: Bool

    /// The maximum suggested bitrate for uploaded videos, in kbit/s
    public let videoUploadBitrate: Int


    public init(
        isAutoDownloadEnabled: Bool,
        maxOtherFileSize: Int,
        maxPhotoFileSize: Int,
        maxVideoFileSize: Int,
        preloadLargeVideos: Bool,
        preloadNextAudio: Bool,
        useLessDataForCalls: Bool,
        videoUploadBitrate: Int
    ) {
        self.isAutoDownloadEnabled = isAutoDownloadEnabled
        self.maxOtherFileSize = maxOtherFileSize
        self.maxPhotoFileSize = maxPhotoFileSize
        self.maxVideoFileSize = maxVideoFileSize
        self.preloadLargeVideos = preloadLargeVideos
        self.preloadNextAudio = preloadNextAudio
        self.useLessDataForCalls = useLessDataForCalls
        self.videoUploadBitrate = videoUploadBitrate
    }
}

