//
//  SearchProductEndpoint.swift
//  ShareCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation
import NetworkCore
import Alamofire

enum SearchProductEndpoint: NetworkTargetType {
    
    case search(data: SearchProductRequestModel)
    
    var baseURL: String {
        return NetworkCoreAPIConfig.shared.baseURL
    }
    
    var path: String {
        return "tienda/"
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var sampleData: Data? {
        let bundle = CoreRemoteDataSource.bundle
        let sampleData = NetworkCoreSampleData(bundle: bundle)
        
        return sampleData.getData(for: "Products")
    }
    
    var parameters: Parameters? {
        
        switch self {
        case .search(let data):
            let param = [
                "s": data.productName,
                "d3106047a194921c01969dfdec083925": "json"
            ]
            return param
        }
    }
    
    var encoding: ParameterEncoding {
        return URLEncoding.queryString
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}
