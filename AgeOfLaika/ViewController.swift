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
        if (enterHumanYearsTextField.text != ""){
            let humanYearsFromTextField = enterHumanYearsTextField.text.toInt()!
            let dogYearsMultiplier = 7
            dogYearsLabel.text = "\(humanYearsFromTextField * dogYearsMultiplier)" + " in Human Years"
        }
        else {
            dogYearsLabel.text = ""
        }
        
        enterHumanYearsTextField.text = ""
        dogYearsLabel.hidden = false
        enterHumanYearsTextField.resignFirstResponder()
        
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        var doubleHumanYearsFromTextField = Double((enterHumanYearsTextField.text as NSString).doubleValue)
        var realDogYears:Double
        var doubleDogYearsMultiplier:Double = doubleHumanYearsFromTextField - 2
        
        if doubleHumanYearsFromTextField <= 2 {
            realDogYears = (10.5 * doubleHumanYearsFromTextField)
        }
        else {
            realDogYears = (2 * 10.5) + (doubleDogYearsMultiplier * 4)
        }
        
        dogYearsLabel.text = "\(realDogYears)" + " in Real Human Years"
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
        dogYearsLabel.hidden = false
        }
    }


