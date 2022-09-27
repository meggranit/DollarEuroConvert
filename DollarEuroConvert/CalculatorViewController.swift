//
//  CalculatorViewController.swift
//  DollarEuroConvert
//
//  Created by meg on 9/11/22.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var dollarAmount: UITextField!
    @IBOutlet weak var conversionResult: UITextField!
    @IBOutlet weak var customConversionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dollarAmount.text = "0.00"
        conversionResult.text = "0.00"
        customConversionLabel.text = Calculator.shared.getConversionSymbol()
    }
    
    
    
    @IBAction func convertFromDollar(_ sender: UIButton) {
        var result = 0.00
        if let dollar = Double (dollarAmount.text!){
            result = Calculator.shared.dollarToCurrency(dollar: dollar)
        }
        conversionResult.text = String (format: "%.2f", result)
    }
    
    
    
    
    /*
    @IBOutlet weak var dollarAmount: UITextField!
    @IBOutlet weak var euroAmount: UITextField!
    @IBOutlet weak var factorAmount: UITextField!
    
    let myCalculator = Calculator ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        euroAmount.text = "0.00"
        dollarAmount.text = "0.00"
        factorAmount.text = "0.98"
    }
    
    
    @IBAction func convertToEuro(_ sender: UIButton) {
        var euros = 0.00
        if let dollar = Double (dollarAmount.text!) {
            euros = myCalculator.dollarToEuro(dollar: dollar)
        }
        euroAmount.text = String (format: "%.2f", euros)
    }
    
    @IBAction func convertToDollar(_ sender: UIButton) {
        var dollars = 0.00
        if let euro = Double (euroAmount.text!) {
            dollars = myCalculator.euroToDollar(euro: euro)
        }
        dollarAmount.text = String (format: "%.2f", dollars)
    }
    /*
    @IBAction func customConvert(_ sender: UIButton) {
        var euros = 0.00
        if let dollar = Double (dollarAmount.text!) , let factor = Double (factorAmount.text!) {
            euros = myCalculator.customFactor(dollar: dollar, customConversion: factor)
        }
        euroAmount.text = String (format: "%.2f", euros)
    }
     */
    @IBAction func customConvert(_ sender: UIButton) {
        var euros = 0.00
        if let dollar = Double (dollarAmount.text!) , let factor = Double (factorAmount.text!) {
            euros = myCalculator.customFactor(dollar: dollar, customConversion: factor)
        }
        euroAmount.text = String (format: "%.2f", euros)
    }
     */
}
