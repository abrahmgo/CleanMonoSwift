//
//  Error+Extensions.swift
//  Utils
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation

public extension Error {
    
    var code: Int { return (self as NSError).code }
    var message: String { return (self as NSError).localizedDescription }
    var domain: String { return (self as NSError).domain }
}

