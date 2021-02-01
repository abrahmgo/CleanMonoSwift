//
//  ScreenAnalyticsFactory.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import Foundation
import Analytics

struct ScreenAnalytics: ScreenAnalyticsType {
    
    let screensAnalytics: [ScreenAnalyticsType]
    
    func track(screenName: String, properties: [String: Any]) {
        screensAnalytics.forEach { (analytics) in
            analytics.track(screenName: screenName, properties: properties)
        }
    }
}

public struct ScreenAnalyticsFactory {
    
    public static func makeAnalytics() -> ScreenAnalyticsType {
        return ScreenAnalytics(screensAnalytics: [MixpanelScreenAnalytics()])
    }
}
