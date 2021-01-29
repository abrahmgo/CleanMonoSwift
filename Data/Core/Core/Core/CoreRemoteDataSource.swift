//
//  CoreRemoteDataSource.swift
//  Core
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation
import NetworkCore
import CoreDataSource

public struct CoreRemoteDataSource {
    
    public static var bundle: Bundle? {
        return Bundle(identifier: "com.andres.bonilla.Core")
    }
    
//    public static var searchProduct: SearchProductRemoteDataSourceType {
//        return SearchProductAPI(service: NetworkCoreAPIConfig.shared.networkService)
//    }
}
