//
//  TrackerFactory.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

protocol TrackerFactory {
    func tracker(for type: TrackerType) -> Tracker
    func trackers(for types: [TrackerType]) -> [Tracker]
}

class MyTrackersFactory: TrackerFactory {
    private let tealium: Tracker
    private let firebase: Tracker

    init(tealium: Tracker = AnalyticsTracker.tealium ,
         firebase: Tracker = AnalyticsTracker.firebase) {
        self.tealium = tealium
        self.firebase = firebase
    }

    func tracker(for type: TrackerType) -> Tracker {
        switch type {
        case .tealium:
            return tealium
        case .firebase:
            return firebase
        }
    }

    func trackers(for types: [TrackerType]) -> [Tracker] {
        return types.map { tracker(for: $0) }
    }
}
