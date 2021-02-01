//
//  ProductCollectionViewCell.swift
//  Components
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import SwiftUI

public struct ProductViewCell: View {
    
    public let model: ProductViewDataType
    
    public init(model: ProductViewDataType) {
        self.model = model
    }
    
    public var body: some View {
        VStack {
            VStack {
                Spacer()
                Image(model.imgProduct)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.yellow)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                Text(model.title)
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
    var imgProduct: String { get }
    var price: String { get }
}

public struct ExampleProductViewData: ProductViewDataType {
    
    public init() {
    }
    
    public let title: String = "Xbox"
    public let imgProduct: String = ""
    public let price: String = "$30.00"
}
