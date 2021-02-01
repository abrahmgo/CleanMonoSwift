//
//  NetworkCoreAPI.swift
//  NetworkCore
//
//  Created by Andrés Bonilla Gómez on 31/01/21.
//

import Foundation

public struct NetworkCoreAPI {
    
    public static func setup(with config: NetworkCoreAPIConfigType.Type) {
        NetworkCoreAPIConfig.shared = NetworkCoreAPIConfig(config)
    }
}
