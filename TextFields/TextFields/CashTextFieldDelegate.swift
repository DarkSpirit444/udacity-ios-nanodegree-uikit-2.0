//
//  CashTextFieldDelegate.swift
//  TextFields
//
//  Created by David Teo on 4/14/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    var pennies: Int = 0
    
    func textField(textField: UITextField, shouldChangeCharactersInRange
        range: NSRange, replacementString string: String) -> Bool {
        
        if string.characters.count == 0 {
            return true
        }
        
        if let diff = Int(string) {
            pennies += diff
        } else {
            return false
        }
        
        let formatter = NSNumberFormatter()
        formatter.locale = NSLocale.currentLocale()
        
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        
        let formattedAmountString = formatter.stringFromNumber(Float(pennies)/100)
        
        textField.text = formattedAmountString
        
        return false
    }
}