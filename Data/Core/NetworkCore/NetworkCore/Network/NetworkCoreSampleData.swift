//
//  NetworkCoreSampleData.swift
//  NetworkCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

public struct NetworkCoreSampleData {
    
    private let bundle: Bundle?
    
    public init(bundle: Bundle?) {
        self.bundle = bundle
    }
    
    public func getData(for fileName: String) -> Data? {
     
        guard let url = bundle?.url(forResource: fileName, withExtension: "json") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            return nil
        }
        
        return data
    }
}
