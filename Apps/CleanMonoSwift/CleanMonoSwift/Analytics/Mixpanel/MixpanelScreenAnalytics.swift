//
//  MixpanelScreenAnalytics.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation
import Analytics

struct MixpanelScreenAnalytics: ScreenAnalyticsType {
    
    func track(screenName: String, properties: [String: Any]) {
        print("screen: \(screenName) properties\(properties)")
    }
}
