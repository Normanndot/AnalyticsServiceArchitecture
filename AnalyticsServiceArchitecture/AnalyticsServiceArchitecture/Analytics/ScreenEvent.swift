//
//  ScreenEvent.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

struct ScreenEvent: Event {

    private let baseEvent: BaseEvent
    init(name: String,
         section: String,
         sections: [String]? = nil,
         type: String,
         payload: [String: String]) {
        self.baseEvent = BaseEvent(name: name,
                                   section: section,
                                   sections: sections,
                                   type: type,
                                   payload: payload,
                                   customName: "",
                                   customValue: [:])
    }

    func analyticsDictionary() -> [String: String] {
        return baseEvent.analyticsDictionary()
    }

    func title() -> String {
        return baseEvent.type
    }
}

