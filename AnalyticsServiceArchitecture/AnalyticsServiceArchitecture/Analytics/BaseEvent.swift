//
//  BaseEvent.swift
//  DoorDash
//
//  Created by Norman, ThankaVijay on 14/11/20.
//  Copyright © 2020 Monster. All rights reserved.
//

import Foundation

struct BaseEvent {
    let name: String
    let section: String
    let sections: [String]?
    let type: String
    let appVersion: String = "13.2"
    let customerID: String = "12345"
    let payload: [String: String]
    var customName: String
    var customValue: [String: String]

    func analyticsDictionary() -> [String: String] {
        var dictionary: [String: String] = [
            "page_name": name,
            "page_section": section,
            "page_type": type,
            "customer_id": customerID,
            "app_version": appVersion
        ]

        for (key, value) in sectionsPayload() {
            dictionary.updateValue(value, forKey: key)
        }

        for (key, value) in payload {
            dictionary.updateValue(value, forKey: key)
        }

        return dictionary
    }
}

extension BaseEvent: Equatable {
    func sectionsPayload() -> [String: String] {
        guard let sections = sections else {
            return [:]
        }

        var payload = [String: String]()
        var currentValue: String = ""

        for (index, section) in sections.enumerated() {
            currentValue += suffixFor(index: index, section: section)
            payload.updateValue(currentValue, forKey: keyFor(index: index))
        }

        return payload
    }

    private func suffixFor(index: Int, section: String) -> String {
        if index > 0 {
            return ":" + section
        }
        return section
    }

    private func keyFor(index: Int) -> String {
        if index > 0 {
            return "page_section_\(index + 1)"
        }
        return "page_section"
    }
}
