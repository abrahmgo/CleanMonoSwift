//
//  MixpanelPropertiesAnalytics.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation
import Analytics

struct MixpanelPropertiesAnalytics: PropertiesAnalyticsType {
    
    func track(properties: [String: Any]) {
        
        if let personId = properties["user-id"] as? Int {
            print("\(personId)")
        }
        
        for property in properties {
            print(property)
        }
        
        print(properties)
    }
}
