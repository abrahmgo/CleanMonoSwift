//
//  ProductsFactory.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 31/01/21.
//

import Foundation
import Core
import CoreUseCases

struct ProductsFactory {
    
    static func makeProductsFactoryDependencies() -> ProductsDependencies {
        
        // MARK: API
        let searchProductAPI = CoreRemoteDataSource.searchProduct
        
        // MARK: Usecases
        let getSearchProductUseCase = GetSearchProductsUseCase(searchProductRemoteDataSource: searchProductAPI)
        
        // MARK: ViewModel
        let dependencies = ProductsDependencies(getProducts: getSearchProductUseCase)
        
        return dependencies
    }
}
