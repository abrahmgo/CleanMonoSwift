//
//  ProductsComponent.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation
import Components

public enum ProductsComponent: Identifiable {
    
    public var id: String {
        return UUID().uuidString
    }
    
    case product(viewData: ProductViewDataType)
}

public extension ProductsComponent {
    
    static func == (lhs: ProductsComponent, rhs: ProductsComponent) -> Bool{
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
}
