//
//  SearchProductResponseModel+Mapper.swift
//  ShareCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation
import CoreEntities
import Utils

extension SearchProductResponseModel {
    
    func mapToSearch() -> SearchProduct {
        
        let items = itemListElement?.map({$0.mapToItem()})
        
        return SearchProduct(numberOfItems: numberOfItems ?? 0,
                             itemListElement: items ?? [])
    }
}

extension ItemResponseModel {
    
    func mapToItem() -> Item {
        
        let information = item?.mapToInformation()
        
        return Item(position: position ?? 0,
                    item: information)
    }
}


extension InformationResponseModel {
    
    func mapToInformation() -> ItemInformation {
        
        let itemRaiting = aggregateRating?.mapToRaiting()
        let splitURL = url?.split(separator: "=")
        
        guard let skuId = splitURL?[1] else {
            return ItemInformation(name: name ?? "",
                                   url: url?.toURL(),
                                   imgUrl: nil,
                                   aggregateRating: itemRaiting)
        }
        
        let imageURL = CoreConstants.imgPrefix + "\(skuId)" + ".jpg"
        
        return ItemInformation(name: name ?? "",
                               url: url?.toURL(),
                               imgUrl: imageURL.toURL(),
                               aggregateRating: itemRaiting)
    }
}


extension RaitingResponseModel {
    
    func mapToRaiting() -> ItemRaiting {
        return ItemRaiting(ratingValue: ((ratingValue ?? "0") as NSString).doubleValue,
                           reviewCount: reviewCount?.toInt() ?? 0)
    }
}
