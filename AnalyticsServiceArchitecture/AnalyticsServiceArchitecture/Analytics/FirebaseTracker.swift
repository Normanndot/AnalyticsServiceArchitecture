//
//  FirebaseTracker.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

final class FireBaseTracker: Tracker {

    func track(_ event: ScreenEvent) {
        print("Firebase tracking called")
    }

    func track(_ event: InteractionEvent) {
//        FirebaseAnalytics.Analytics.logEvent(event.name(), parameters: event.value())
    }

    func trackAppOpening() {
    }
}
