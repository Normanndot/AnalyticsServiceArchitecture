//
//  DoorDashAnalytics.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

final class MyAnalytics: Analytics {
    static let shared = MyAnalytics()
    private var trackersFactory: TrackerFactory
    private var lastEvent: Event?

    init(trackersFactory: TrackerFactory = MyTrackersFactory()) {
        self.trackersFactory = trackersFactory
    }

    func track(_ event: InteractionEvent, trackers trackerTypes: [TrackerType]) {
        let trackers = trackersFactory.trackers(for: trackerTypes)
        trackers.forEach { $0.track(event) }
    }

    func track(_ event: ScreenEvent) {
        guard shouldTrackScreenEvent(event) else {
            return
        }
        trackPageEvent(event: event)
    }

    private func trackPageEvent(event: ScreenEvent) {
        let trackers = trackersFactory.trackers(for: TrackerType.eventTrackers())
        trackers.forEach { $0.track(event) }
        lastEvent = event
    }

    private func shouldTrackScreenEvent(_ currentEvent: Event) -> Bool {
        guard let lastEvent = lastEvent else {
            return true
        }

        return currentEvent.analyticsDictionary() != lastEvent.analyticsDictionary()
    }
}
