//
//  ContentView.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import SwiftUI
import Components

struct ProductsView: View {
    
    @ObservedObject private var viewModel: ProductsViewModel
    
    init(viewModel: ProductsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        NavigationView {
            ScrollView([ .vertical ], showsIndicators: false) {
                if self.viewModel.components.isEmpty {
                    loadingProducts
                } else {
                    ForEach(self.viewModel.components) { component in
                        ProductViewCell(model: component.data)
                    }
                    .listRowInsets(EdgeInsets())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarTitle(Text("Productos"))
        }
    }
    
    var loadingProducts: some View {
        Text("Cargando Products")
            .font(.title)
            .foregroundColor(.secondary)
            .lineLimit(nil)
            .lineSpacing(8)
            .padding(24)
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView(viewModel: ProductsViewModel(dependencies: ProductsFactory.makeProductsFactoryDependencies()))
    }
}
