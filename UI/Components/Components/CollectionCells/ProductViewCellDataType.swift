//
//  ProductViewCellDataType.swift
//  Components
//
//  Created by Andrés Bonilla Gómez on 01/02/21.
//

import Foundation

public protocol ProductViewDataType {
    
    var title: String { get }
    var url: URL? { get }
    var price: String { get }
}

public struct ExampleProductViewData: ProductViewDataType {
    
    public init() { }
    
    public let title: String = "Xbox"
    public let url: URL? = URL(string: "www.google.com")
    public let price: String = "$30.00"
}
