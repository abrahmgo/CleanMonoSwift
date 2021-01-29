//
//  SearchProductResponseModel.swift
//  ShareCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

struct SearchProductResponseModel: Codable {
    
    let numberOfItems: Int?
    let itemListElement: [ItemResponseModel]?
}

struct ItemResponseModel: Codable {
    
    let position: Int?
    let item: InformationResponseModel?
}

struct InformationResponseModel: Codable {
    
    let name: String?
    let url: String?
    let aggregateRating: RaitingResponseModel?
}

struct RaitingResponseModel: Codable {
    
    let ratingValue: String?
    let reviewCount: String?
}
