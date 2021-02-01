//
//  ProductsViewModel.swift
//  CleanMonoSwift
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//
import Combine
import Foundation

public class ProductsViewModel: ObservableObject, ProductsViewModelType, ProductsViewModelInputs, ProductsViewModelOutputs {
    
    // MARK: Properties
    public var outputs: ProductsViewModelOutputs { return self }
    public var inputs: ProductsViewModelInputs { return self }
    
    // MARK: Inputs
    
    // MARK: Outputs
    @Published public var error: Error? = nil
    @Published public var components: [ProductComponent] = []
    
    // MARK: Private
    private let dependencies: ProductsDependencies
    private var disposeBag = Set<AnyCancellable>()
    
    public init(dependencies: ProductsDependencies) {
        self.dependencies = dependencies
        
        components = []
        downloadProducts()
    }
    
    private func downloadProducts() {
        dependencies.getProducts.execute(product: "product")
            .debounce(for: .seconds(2), scheduler: DispatchQueue.main)
            .sink { [weak self] (error) in
                switch error {
                case .failure(let error):
                    self?.error = error
                case .finished:
                    print("finished")
                }
            } receiveValue: { [weak self] (search) in
                
                let items = search.itemListElement
                let itemsData = items.map({ProductViewData(item: $0)})
                let components = itemsData.map({ProductComponent(data: $0)})
                
                DispatchQueue.main.async {
                    self?.components = components
                }
                
            }.store(in: &disposeBag)
    }
}

