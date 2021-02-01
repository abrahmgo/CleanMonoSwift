//
//  ScreenAnalyticsType.swift
//  Analytics
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation

public protocol ScreenAnalyticsType {
    
    func track(screenName: String, properties: [String: Any])
}
