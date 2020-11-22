//
//  HowToUseScreenEvent.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

class HowToUseScreenEvent: AnalyticsScreenEventFactory {

    func event() -> ScreenEvent {
        return ScreenEvent(
            name: "settingsview",
            section: "fontsection",
            type: "settings",
            payload: [:]
        )
    }
}
