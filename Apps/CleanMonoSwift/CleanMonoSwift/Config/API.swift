//
//  API.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 31/01/21.
//

import Foundation

enum APIBundle: String {
    
    case production = "PRODUCTION"
    case development = "DEV"
    
    var server: String {
        switch self {
        case .production:
            return "https://www.liverpool.com.mx/"
        case .development:
            return "https://www.liverpool.com.mx/"
        }
    }
}
