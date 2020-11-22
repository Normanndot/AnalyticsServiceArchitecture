//
//  TrackerType.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

enum TrackerType {
    case tealium
    case firebase

    static func eventTrackers() -> [TrackerType] {
        return [.tealium, .firebase]
    }
}


