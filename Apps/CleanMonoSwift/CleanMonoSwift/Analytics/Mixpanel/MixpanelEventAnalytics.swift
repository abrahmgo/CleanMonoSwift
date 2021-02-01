//
//  MixpanelEventAnalytics.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation
import Analytics

struct MixpanelEventAnalytics: EventAnalyticsType {
    
    func track(eventName: String, properties: [String: Any]) {
        print("event: \(eventName) properties\(properties)")
    }
}
