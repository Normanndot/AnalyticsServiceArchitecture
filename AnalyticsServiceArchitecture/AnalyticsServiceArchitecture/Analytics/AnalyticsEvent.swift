//
//  AnalyticsEvent.swift
//  AnalyticsServiceArchitecture
//
//  Created by Norman, ThankaVijay on 01/11/20.
//

import Foundation

public struct AnalyticsEvent {
    var name: String
    var parameters: [String: String]

    init(name: String, parameters: [String: String] = [:]) {
        self.name = name
        self.parameters = parameters
    }
}

extension AnalyticsEvent {
    static let categorySelected = AnalyticsEvent(name: "categorySelected")
    static func categoryAdded(categoryTitle: String) -> AnalyticsEvent {
        return AnalyticsEvent(name: "categoryAdded", parameters: ["categoryTitle": categoryTitle])
    }
}
