//
//  AnalyticsProvider.swift
//  AnalyticsServiceArchitecture
//
//  Created by Norman, ThankaVijay on 01/11/20.
//

import Foundation

public protocol AnalyticsProvider {
    func reportEvent(name: String, parameters: [String: String])
}
