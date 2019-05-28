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
    var label:UILabel!
    var label2:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 50)
        label.text = "0"
        self.label = label
        view.addSubview(label)
        
        //increment Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        button.addTarget(self, action: #selector(ViewController.changeBgColor), for: UIControl.Event.touchUpInside)

        //second label
        let label2 = UILabel()
        label2.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        label2.text = "0"
        self.label2 = label2
        view.addSubview(label2)
        
        //decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 450, width: 150, height: 80)
        decrementButton.setTitle("Decrement Button", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        decrementButton.addTarget(self, action: #selector(ViewController.changeBgColor), for: UIControl.Event.touchUpInside)
        
    }

    @objc func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        
    }
    //change color
  @objc func changeBgColor() {
    if self.view.backgroundColor == UIColor.darkGray {
            self.view.backgroundColor = UIColor.blue
        }else{
            self.view.backgroundColor = UIColor.darkGray
        }
    }
    
}

