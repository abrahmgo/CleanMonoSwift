//
//  ItemInformation.swift
//  CoreEntities
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

public class ItemInformation {
    
    public let name: String
    public let url: URL?
    public let imgUrl: URL?
    public let aggregateRating: ItemRaiting?
    
    public init(name: String, url: URL?, imgUrl: URL?, aggregateRating: ItemRaiting?) {
        self.name = name
        self.url = url
        self.imgUrl = imgUrl
        self.aggregateRating = aggregateRating
    }
}
