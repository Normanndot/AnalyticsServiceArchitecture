//
//  Event.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

protocol Event {
    func analyticsDictionary() -> [String: String]
    func title() -> String
    func name() -> String
    func value() -> [String: String]
}

extension Event {
    func name() -> String { return "" }
    func value() -> [String: String] { return [:] }
}
