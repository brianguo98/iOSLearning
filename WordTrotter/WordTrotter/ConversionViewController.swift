//
//  ConversionViewController.swift
//  WordTrotter
//
//  Created by Brian Guo on 6/1/17.
//  Copyright © 2017 Brian Guo. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate

{
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Measurement<UnitTemperature>?
    {
    didSet{
        updateCelsiusLabel()
    } //property observer, chunk of code that gets called whenever a property's value changes
    }
    
    
    var celsiusValue: Measurement<UnitTemperature>?{
        if let fahrenheitValue = fahrenheitValue{
            return fahrenheitValue.converted(to: .celsius)
        }
        else {
            return nil
        }
    }
    
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField){
        if let text = textField.text, let number =  numberFormatter.number(from:text)
        {
            fahrenheitValue = Measurement(value: number.doubleValue, unit: .fahrenheit)
        }
        else
        {
            fahrenheitValue = nil
        }
        
        }
    
    @IBAction func dismissKeyboard (_ sender: UITapGestureRecognizer){
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        }
        else{
            celsiusLabel.text = "???"
        }
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        print("ConversionViewController loaded its view")
        updateCelsiusLabel()
    } //updates celsiusLabel when application is first launched
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }() //trunkates decimal numbers to one decimal point bihhhhhhhhh
    
  
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        //let replacementTextHasDecimalSeparator = string.range(of: ".")
        let currentLocale = Locale.current
        let decimalSeparator = currentLocale.decimalSeparator ?? "."
        
        let existingTextHasDecimalSeparator = textField.text?.range(of: decimalSeparator)
        let replacementTextHasDecimalSeparator = string.range(of: decimalSeparator)
        
        if existingTextHasDecimalSeparator != nil, replacementTextHasDecimalSeparator != nil {
            return false
        }
        else {
            return true
        }
    }
    
    
    
}
