//
//  EventAnalyticsType.swift
//  Analytics
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation

public protocol EventAnalyticsType {
    
    func track(eventName: String, properties: [String: Any])
}
