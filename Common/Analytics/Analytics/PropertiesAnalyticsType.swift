//
//  PropertiesAnalyticsType.swift
//  Analytics
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation

public protocol PropertiesAnalyticsType {
    
    func track(properties: [String: Any])
}
