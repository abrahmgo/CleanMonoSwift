//
//  SearchesRemoteDataSource.swift
//  CoreDataSource
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation
import Combine

public protocol SearchesRemoteDataSource {
    
    func saveSearch(product: String) -> AnyPublisher<Void, Never>
    func getSearches() -> AnyPublisher<[String], Never>
}
