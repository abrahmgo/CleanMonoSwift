//
//  NetworkCoreError.swift
//  NetworkCore
//
//  Created by Andrés Bonilla Gómez on 09/09/20.
//  Copyright © 2020 Andrés Bonilla Gómez. All rights reserved.
//

import Foundation

public struct NetworkCoreError: Codable {
    
    public let message: String?
    public let code: Int?
    public let ref: String?
}
