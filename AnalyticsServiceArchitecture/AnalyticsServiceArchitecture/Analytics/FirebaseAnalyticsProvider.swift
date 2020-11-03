//
//  FirebaseAnalyticsProvider.swift
//  AnalyticsServiceArchitecture
//
//  Created by Norman, ThankaVijay on 01/11/20.
//

import Foundation

public struct FirebaseAnalyticsProvider: AnalyticsProvider {
    private let eventMapper: AnalyticsEventMapper

    init(eventMapper: AnalyticsEventMapper) {
        self.eventMapper = eventMapper
        setup()
    }

    func setup() {
//        FirebaseApp.configure()
    }

    public func reportEvent(name: String, parameters: [String: String]) {
        let mappedName = eventMapper.name(for: name)
        let mappedParameters = eventMapper.parameters(for: parameters)
//        Analytics.logEvent(mappedName, parameters: mappedParameters)
    }
}
