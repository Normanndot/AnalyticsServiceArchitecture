//
//  Analytics.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

protocol Analytics: class {
    func track(_ event: InteractionEvent, trackers: [TrackerType])
    func track(_ event: ScreenEvent)
}

enum AnalyticsTracker {
    static let tealium = TealiumTracker()
    static let firebase = FireBaseTracker()
}

protocol AnalyticsScreenEventFactory {
    func event() -> ScreenEvent
}

protocol AnalyticsInteractionEventFactory {
    func event() -> InteractionEvent
}

