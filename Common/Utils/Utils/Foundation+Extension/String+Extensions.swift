//
//  String+Extensions.swift
//  Utils
//
//  Created by Andrés Bonilla Gómez on 29/01/21.
//

import Foundation

extension String: LocalizedError {
    
    public var errorDescription: String? {
        return self
    }
}

public extension String {
    
    func toURL() -> URL? {
        return URL(string: self)
    }
    
    func toDecimal() -> Decimal? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "es_MX")
        
        if let number = formatter.number(from: self) {
            return number.decimalValue
        }
        return nil
    }
    
    func toDouble() -> Double? {
        guard let decimal = self.toDecimal() else {
            return nil
        }
        return Double(decimal.description) ?? 0.0
    }
    
    func toInt() -> Int {
       return Int(self) ?? 0
    }
}
