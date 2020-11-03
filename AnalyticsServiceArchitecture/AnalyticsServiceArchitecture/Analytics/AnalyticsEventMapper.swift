//
//  AnalyticsEventMapper.swift
//  AnalyticsServiceArchitecture
//
//  Created by Norman, ThankaVijay on 01/11/20.
//

import Foundation

public protocol AnalyticsEventMapper {
    func name(for event: String) -> String
    func parameters(for parameters: [String: String]) -> [String: String]
}
