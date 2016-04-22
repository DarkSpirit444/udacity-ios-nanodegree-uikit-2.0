//
//  ZipCodeTextFieldDelegate.swift
//  TextFields
//
//  Created by David Teo on 4/14/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange
        range: NSRange, replacementString string: String) -> Bool {
        
        if string.characters.count == 0 {
            return true;
        }
        
        var origCount = 0
        if let origText = textField.text {
            origCount = origText.characters.count
        }
        
        if origCount + string.characters.count > 5 {
            return false;
        }
        
        let invalidCharacters = NSCharacterSet(charactersInString: "0123456789").invertedSet
        return string.rangeOfCharacterFromSet(invalidCharacters, options: [], range: string.startIndex ..< string.endIndex) == nil
    }
}