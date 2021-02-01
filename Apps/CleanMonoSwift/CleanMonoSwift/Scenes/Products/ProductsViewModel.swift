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
    public let isLoading = CurrentValueSubject<Bool, Never>(false)
    public let error = PassthroughSubject<Error, Never>()
    public var objectWillChange = PassthroughSubject<Void, Never>()
    public private(set) var items: [ProductViewData] {
        willSet {
            self.objectWillChange.send()
        }
    }
    
    // MARK: Private
    private let dependencies: ProductsDependencies
    private var disposeBag = Set<AnyCancellable>()
    
    public init(dependencies: ProductsDependencies) {
        self.dependencies = dependencies
        
        items = []
        downloadProducts()
    }
    
    private func downloadProducts() {
        dependencies.getProducts.execute(product: "product")
            .sink { [weak self] (error) in
                switch error {
                case .failure(let error):
                    self?.error.send(error)
                case .finished:
                    print("finished")
                }
            } receiveValue: { [weak self] (search) in
                
                let items = search.itemListElement
                let itemsData = items.map({ProductViewData(item: $0)})
                let itemsComponent = itemsData.map({ProductsComponent.product(viewData: $0)})
                
                DispatchQueue.main.async {
                    self?.items = itemsData
                }
                
                self?.components.send(itemsComponent)
            }.store(in: &disposeBag)
    }
}

