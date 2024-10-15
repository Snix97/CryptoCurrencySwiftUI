//
//  Double.swift
//  CryptoCurrencySwiftUI
//
//  Created by Claire Roughan on 15/10/2024.
//

import Foundation


extension Double {
    
    //Create number formatters
    private var currencyformatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter
    }
    
    private var numberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter
    }
    
    //Helper methods to utlise the formatter
    func toCurrency() -> String {
        return currencyformatter.string(for: self) ?? "00.00"
    }
    
    func toPercentString() -> String {
        return (numberFormatter.string(for: self) ?? "00.00" + "%")
    }
}
