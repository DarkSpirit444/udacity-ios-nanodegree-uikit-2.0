//
//  VillainDetailView.swift
//  BondVillains
//
//  Created by David Teo on 5/2/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation
import UIKit

class VillainDetailViewController: UIViewController{
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    var villian: Villain!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = villian.name
        imageView.image = UIImage(named: villian.imageName)
    }
}
