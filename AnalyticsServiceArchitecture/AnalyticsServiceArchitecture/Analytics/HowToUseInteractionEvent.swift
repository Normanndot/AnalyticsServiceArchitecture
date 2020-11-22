//
//  HowToUseInteractionEvent.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

class HowToUseInteractionEvent: AnalyticsInteractionEventFactory {

    func event() -> InteractionEvent {
        return UserInteractionEvent(name: "HowToUseInteractionEvent",
                                    section: "sign up",
                                    sections: nil,
                                    type: "sign up",
                                    eventAction: "skip signup",
                                    eventDetails: nil,
                                    payload: [:])
    }
}
