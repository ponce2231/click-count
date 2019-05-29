//
//  ViewController.swift
//  click count
//
//  Created by Christopher Ponce Mendez on 5/28/19.
//  Copyright © 2019 none. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
}

