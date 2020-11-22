//
//  TealiumTracker.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

final class TealiumTracker: Tracker {

    private let tealiumInstanceID = "TheSunTealium"
//    private let configuration = TEALConfiguration(account: ConfigKey.tealiumAccount.keyValue,
//                                                  profile: ConfigKey.tealiumProfile.keyValue,
//                                                  environment: ConfigKey.tealiumEnvironment.keyValue)
    static var loggingEnabled: Bool = false
//    private let tealium: Tealium

    init() {
//        tealium = Tealium.newInstance(forKey: tealiumInstanceID, configuration: configuration)
    }

    func track(_ event: ScreenEvent) {
        if TealiumTracker.loggingEnabled {
            print("🍵 Screen \(event.title())\n\(event.analyticsDictionary() as AnyObject)")
        }
//        tealium.trackView(withTitle: event.title(), dataSources: event.analyticsDictionary())
    }

    func track(_ event: InteractionEvent) {
        if TealiumTracker.loggingEnabled {
            print("🍵 Interaction \(event.title())\n\(event.analyticsDictionary() as AnyObject)")
        }
//        tealium.trackEvent(withTitle: event.title(), dataSources: event.analyticsDictionary())
    }

    func trackAppOpening() {
        preconditionFailure("shouldn't track app opening for TealiumSDK")
    }
}

extension TealiumTracker {
    func visitorID() -> String {
//        if !Device.current.isRealDevice {
//            return "DummyUDID"
//        }

//        guard let dictionary = tealium.persistentDataSourcesCopy() as? [String: String] else {
//            assertionFailure("Expected a dictionary from Tealium")
//            return ""
//        }
//
//        guard let uuid = dictionary["uuid"] else {
//            assertionFailure("Expected an uuid from the persistentDataSource")
//            return ""
//        }
        return ""//uuid.lowercased()
    }
}
