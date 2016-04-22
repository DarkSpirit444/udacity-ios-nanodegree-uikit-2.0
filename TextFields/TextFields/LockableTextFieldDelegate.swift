//
//  LockableTextFieldDelegate.swift
//  TextFields
//
//  Created by David Teo on 4/14/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class LockableTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var lockSwitch: UISwitch!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange
        range: NSRange, replacementString string: String) -> Bool {
        
        // Construct the text that will be in the field if this change is accepted
        var newText = textField.text! as NSString
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        return lockSwitch.on
    }
}