//
//  ContentView.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 28/01/21.
//

import SwiftUI
import Components
import Analytics

struct ProductsView: View {
    
    @ObservedObject private var viewModel: ProductsViewModel
    
    private let screenAnalytics: ScreenAnalyticsType
    private let eventAnalytics: EventAnalyticsType
    
    init(viewModel: ProductsViewModel,
         screenAnalytics: ScreenAnalyticsType = ScreenAnalyticsFactory.makeAnalytics(),
         eventAnalytics: EventAnalyticsType = EventAnalyticsFactory.makeAnalytics()) {
        self.eventAnalytics = eventAnalytics
        self.screenAnalytics = screenAnalytics
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
                            .onTapGesture {
                                eventAnalytics.track(eventName: component.data.title, properties: [:])
                            }
                    }
                    .listRowInsets(EdgeInsets())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
            .navigationBarTitle(Text("Productos"))
        }
        
        .onAppear() {
            screenAnalytics.track(screenName: "products-view", properties: [:])
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
