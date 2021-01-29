//
//  SearchProductAPI.swift
//  ShareCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import UIKit
import Foundation
import NetworkCore
import CoreDataSource
import CoreEntities
import Combine

struct SearchProductAPI {
    
    let service: NetworkService
}

extension SearchProductAPI: SearchProductRemoteDataSourceType {
    
    func getItemsSearch(product: String) -> AnyPublisher<SearchProduct, Error> {
        
        let requestModel = SearchProductRequestModel(productName: product)
        let endpoint = SearchProductEndpoint.search(data: requestModel)
        let request: AnyPublisher<NetworkCoreData<SearchProductResponseModel>, Error> = service.request(target: endpoint)
        
        return request.flatMap { (responseModel) -> AnyPublisher<SearchProduct, Error> in
            if let search = responseModel.data?.mapToSearch() {
                return Just(search)
                    .setFailureType(to: Error.self)
                    .eraseToAnyPublisher()
            } else if let searchError = responseModel.getError() {
                return Fail(error: searchError)
                    .eraseToAnyPublisher()
            }
            
            return Fail(error: "unespecified")
                .eraseToAnyPublisher()
        }.eraseToAnyPublisher()
    }
}
