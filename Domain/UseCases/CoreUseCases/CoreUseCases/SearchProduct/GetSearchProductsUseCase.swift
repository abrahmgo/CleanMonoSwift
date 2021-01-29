//
//  GetSearchProductsUseCase.swift
//  CoreUseCases
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation
import CoreEntities
import CoreDataSource
import Combine

public protocol GetSearchProductsUseCaseType {
    func execute(product: String) -> AnyPublisher<SearchProduct, Error>
}

public struct GetSearchProductsUseCase: GetSearchProductsUseCaseType {
    
    private let searchProductRemoteDataSource: SearchProductRemoteDataSourceType
    
    public init(searchProductRemoteDataSource: SearchProductRemoteDataSourceType) {
        self.searchProductRemoteDataSource = searchProductRemoteDataSource
    }
    
    public func execute(product: String) -> AnyPublisher<SearchProduct, Error> {
        
        return searchProductRemoteDataSource.getItemsSearch(product: product)
    }
}
