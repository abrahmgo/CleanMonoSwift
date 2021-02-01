//
//  PropertiesAnalyticsFactory.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import Foundation
import Analytics

struct PropertiesAnalytics: PropertiesAnalyticsType {
    
    let propertiesAnalytics: [PropertiesAnalyticsType]
    
    func track(properties: [String: Any]) {
        propertiesAnalytics.forEach { (analytics) in
            analytics.track(properties: properties)
        }
    }
}

struct PropertiesAnalyticsFactory {
    
    static func makeAnalytics() -> PropertiesAnalyticsType {
        return PropertiesAnalytics(propertiesAnalytics: [MixpanelPropertiesAnalytics()])
    }
}
