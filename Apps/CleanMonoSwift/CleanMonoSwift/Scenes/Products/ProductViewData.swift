//
//  ProductViewData.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation
import Components
import CoreEntities
import UIKit

public struct ProductViewData: ProductViewDataType, Identifiable {
 
    public let item: Item
    
    public var id = UUID()
    
    public var title: String {
        guard let itemTitle = item.item?.name else {
            return ""
        }
        
        return itemTitle
    }
    
    public var url: URL? {
        guard let url = item.item?.imgUrl else {
            return URL(string: "www.google.com")
        }
        
        return url
    }
    
    public var price: String {
        return ""
    }
    
    public var imgRaiting: UIImage? {
        guard let raiting = item.item?.aggregateRating?.ratingValue else {
            return nil
        }
        print(raiting)
        let imgName = ScaleRating(scale: raiting)
        return UIImage(named: imgName.img)
    }
    
    public var noReviews: String {
        guard let itemNoReviews = item.item?.aggregateRating?.reviewCount else {
            return "0"
        }
        
        return "\(itemNoReviews)"
    }
}
