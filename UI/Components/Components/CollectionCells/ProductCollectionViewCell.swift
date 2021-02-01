//
//  ProductCollectionViewCell.swift
//  Components
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import SwiftUI
import SDWebImageSwiftUI

public struct ProductViewCell: View {
    
    public let model: ProductViewDataType
    
    public init(model: ProductViewDataType) {
        self.model = model
    }
    
    public var body: some View {
        VStack {
            VStack {
                Spacer()
                WebImage(url: model.url)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.yellow)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                Text(model.title)
                Spacer()
                Text(model.price)
            }
        }
    }
}

struct ProductCollectionViewCell_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductViewCell(model: ExampleProductViewData())
    }
}

public protocol ProductViewDataType {
    
    var title: String { get }
    var url: URL? { get }
    var price: String { get }
}

public struct ExampleProductViewData: ProductViewDataType {
    
    public init() {
    }
    
    public let title: String = "Xbox"
    public let url: URL? = URL(string: "www.google.com")
    public let price: String = "$30.00"
}
