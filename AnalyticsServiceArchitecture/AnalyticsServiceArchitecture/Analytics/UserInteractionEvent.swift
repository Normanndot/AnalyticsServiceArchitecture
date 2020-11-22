//
//  UserInteractionEvent.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

struct UserInteractionEvent: InteractionEvent {

    private let baseEvent: BaseEvent

    init(name: String,
         section: String,
         sections: [String]? = nil,
         type: String,
         eventAction: String?,
         eventDetails: String?,
         payload: [String: String],
         customName: String = "",
         customValue: [String: String] = [:]) {

        var dictionary = [
            "event_action": eventAction ?? "",
            "event_details": eventDetails ?? ""
        ]

        for (key, value) in payload {
            dictionary.updateValue(value, forKey: key)
        }

        self.baseEvent = BaseEvent(name: name,
                                   section: section,
                                   sections: sections,
                                   type: type,
                                   payload: dictionary,
                                   customName: customName,
                                   customValue: customValue)
    }

    func analyticsDictionary() -> [String: String] {
        return baseEvent.analyticsDictionary()
    }

    func title() -> String {
        return baseEvent.type
    }

    func name() -> String {
        return baseEvent.customName
    }

    func value() -> [String: String] {
        return baseEvent.customValue
    }
}
