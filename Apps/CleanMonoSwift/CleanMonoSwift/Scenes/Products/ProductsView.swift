//
//  ContentView.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import SwiftUI
import Components

struct ProductsView: View {
    
    @ObservedObject private var viewModel =
        ProductsViewModel(dependencies: ProductsFactory.makeProductsFactoryDependencies())
    
    var body: some View {
        
        NavigationView {
            ScrollView([ .vertical ], showsIndicators: false) {
                
                if self.viewModel.items.isEmpty {
                    Text("Ahora mismo no se pueden recuperar las colecciones de sesiones")
                        .font(.title)
                        .foregroundColor(.secondary)
                        .lineLimit(nil)
                        .lineSpacing(8)
                        .padding(24)
                } else {
                    ForEach(self.viewModel.items) { collection in
                        ProductViewCell(model: collection)
                    }
                    .listRowInsets(EdgeInsets())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarTitle(Text("Productos"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
