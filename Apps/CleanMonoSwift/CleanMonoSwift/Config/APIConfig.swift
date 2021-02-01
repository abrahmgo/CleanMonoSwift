//
//  APIConfig.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 31/01/21.
//

import Foundation
import NetworkCore

struct APIConfig: NetworkCoreAPIConfigType {
    
    static var baseURL: String {
        #if DEBUG
        
        return APIBundle.development.server
        
        #else
        return APIBundle.production.server
        
        #endif
    }
    
    static var useSampleData: Bool {
        #if DEBUG
        return true
        #else
        return false
        #endif
    }
    
    static var additionalHeaders: [String: String] {
        return ["Content-Type": "application/x-www-form-urlencoded", "PLATFORM-ORIGIN": "konfio-ios"]
    }
}
