//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by David Teo on 4/13/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func randomColor() -> UIColor {
        let colors = [UIColor.redColor(), UIColor.orangeColor(),
                      UIColor.yellowColor(), UIColor.greenColor(),
                      UIColor.blueColor(), UIColor.purpleColor(),
                      UIColor.brownColor()];
        
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        
        return colors[randomIndex]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange
        range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        
        return true
    }
}