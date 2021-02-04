//
//  ProductsViewModel+Dependencies.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation
import Combine
import CoreUseCases
import Components

public protocol ProductsViewModelOutputs {
    var error: Error? { get }
    var components: [ProductsComponent] { get }
}

public protocol ProductsViewModelInputs { }

public protocol ProductsViewModelType {
    var outputs: ProductsViewModelOutputs { get }
    var inputs: ProductsViewModelInputs { get }
}

public struct ProductsDependencies {
    
    let getProducts: GetSearchProductsUseCaseType
}
