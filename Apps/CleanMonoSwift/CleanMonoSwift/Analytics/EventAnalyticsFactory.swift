//
//  EventAnalyticsFactory.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import Foundation
import Analytics

struct EventAnalytics: EventAnalyticsType {
    
    let eventsAnalytics: [EventAnalyticsType]
    
    func track(eventName: String, properties: [String: Any]) {
        eventsAnalytics.forEach { (analytics) in
            analytics.track(eventName: eventName, properties: properties)
        }
    }
}

public struct EventAnalyticsFactory {
    
    public static func makeAnalytics() -> EventAnalyticsType {
        return EventAnalytics(eventsAnalytics: [MixpanelEventAnalytics()])
    }
}
