//
//  Calculator.swift
//  DollarEuroConvert
//
//  Created by meg on 9/11/22.
//


import Foundation

class Calculator {
    
    // singleton class - instantiate the object inside the class
    
    static let shared = Calculator()
    
    //  variables for conversion
    var currencies: [Currency] = []
    private var selectedConversionFactor: Double = 0.00
    private var selectedConversionIndex = 1
    
    // private contstructor
    
    private init () {
        currencies.append(Currency(name: "Euro", symbol: "€", conversionRate: 0.98))
        currencies.append(Currency(name: "Peso", symbol: "₱", conversionRate: 20.18))
        currencies.append(Currency(name: "Yen", symbol: "¥", conversionRate: 143.17))
        currencies.append(Currency(name: "Pound", symbol: "£", conversionRate: 0.92))
        setConversionFactor(currencyIndex: selectedConversionIndex)
    }
   
    
    // setter and getter methods for conversion factor
    func setConversionFactor (currencyIndex: Int) {
        selectedConversionIndex = currencyIndex
        selectedConversionFactor = currencies[selectedConversionIndex].conversionRate
    }
    
    func getConversionFactor () -> Double {
        return currencies[selectedConversionIndex].conversionRate
    }
    
    func getSelectedIndex () -> Int {
        return selectedConversionIndex
    }
    
    func getConversionSymbol () -> String {
        return currencies[selectedConversionIndex].symbol
    }
    
    // Generalized method for
    //   dollar to Currency conversion
    func dollarToCurrency (dollar amount: Double) -> Double {
        return amount * selectedConversionFactor
    }
    

}
/*
import Foundation

class Calculator {
    //private variable for conversion factor
    private var conversionFactor = 0.98
    
    //setter and getter methods for conversion factor
    func setConversionFactor (rate: Double) {
        conversionFactor = rate
    }
    
    func getConversionFactor () -> Double {
        return conversionFactor
    }
    
    //Dollar to Euro conversion
    func dollarToEuro (dollar amount: Double) -> Double {
        return amount * conversionFactor
    }
    
    //Euro to Dollar conversion
    func euroToDollar (euro amount: Double) -> Double {
        return amount / conversionFactor
    }
    
    func customFactor (dollar amount: Double, customConversion factor: Double) -> Double {
        return amount * factor
    }
}
*/
