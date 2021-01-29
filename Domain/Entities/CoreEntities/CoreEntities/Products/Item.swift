//
//  Item.swift
//  CoreEntities
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

public class Item {

    public let position: Int
    public let item: ItemInformation?

    public init(position: Int, item: ItemInformation?) {
        self.position = position
        self.item = item
    }
}
