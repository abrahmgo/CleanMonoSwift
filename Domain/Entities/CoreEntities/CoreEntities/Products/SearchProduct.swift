//
//  SearchProduct.swift
//  CoreEntities
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

public class SearchProduct {
    
    public let numberOfItems: Int
    public let itemListElement: [Item]
    
    public init(numberOfItems: Int,
                itemListElement: [Item]) {
        self.numberOfItems = numberOfItems
        self.itemListElement = itemListElement
    }
}
