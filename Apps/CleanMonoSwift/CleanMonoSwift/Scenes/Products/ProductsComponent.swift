//
//  ProductsComponent.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation
import Components

public struct ProductComponent: Identifiable {
    
    public let data: ProductViewDataType
    public var id = UUID()
    
    public init(data: ProductViewDataType) {
        self.data = data
    }
}
