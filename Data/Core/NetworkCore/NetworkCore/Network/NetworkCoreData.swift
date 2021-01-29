//
//  NetworkCoreData.swift
//  NetworkCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

public struct NetworkCoreData<T: Decodable>: Decodable {

    public let data: T?
    public let error: NetworkCoreError?
    public let time: String?
    
    public func getError() -> String? {
        
        guard let networkCoreError = error else {
            return nil
        }
        
        return networkCoreError.message
    }
}

extension NetworkCoreData: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        
        guard let errorMessage = error?.message else {
            return ""
        }
        
        return errorMessage
    }
}
