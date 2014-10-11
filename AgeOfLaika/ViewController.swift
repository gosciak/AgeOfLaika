//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Doug Gosciak on 2014/10/10.
//  Copyright (c) 2014 Doug Gosciak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanYearsFromTextField = enterHumanYearsTextField.text.toInt()!
        let dogYearsMultiplier = 7
        dogYearsLabel.text = "\(humanYearsFromTextField * dogYearsMultiplier)" + " in Human Years"
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
        dogYearsLabel.hidden = false
      
        
    }

}

