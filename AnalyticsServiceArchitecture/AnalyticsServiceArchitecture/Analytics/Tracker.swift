//
//  Tracker.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

protocol Tracker: class {
    func track(_ event: ScreenEvent)
    func track(_ event: InteractionEvent)
    func trackAppOpening()
}
