//
//  ViewController.swift
//  DogYearsAnew
//
//  Created by Marcus Dunlap on 1/12/15.
//  Copyright (c) 2015 Marcus Dunlap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogAgeConverted: UILabel!
    
    @IBOutlet weak var enteredHumanYears: UITextField!
    
    @IBOutlet weak var convertToDogYearsButton: UIButton!
    
    @IBOutlet weak var realDogYearConversion: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
    
    
    
    @IBAction func convertToDogYearsButton(sender: UIButton) {
        let humanTextField = enteredHumanYears.text.toInt()!
        dogAgeConverted.text = "\(humanTextField * 7)" + " Dog Years"
        dogAgeConverted.hidden = false
        dogAgeConverted.textColor = UIColor.redColor()
        enteredHumanYears.resignFirstResponder()
    }
    
    @IBAction func realDogYearConversion(sender: UIButton) {
        let humanTextField = Double((enteredHumanYears.text as NSString).doubleValue)
        if humanTextField > 2 {
            dogAgeConverted.text = "\((2 * 10.5) + ((humanTextField - 2) * 4))" + " Real Dog Years"
        }
        else {
            dogAgeConverted.text = "\(humanTextField * 10.5)" + " Dog Years"
        }
        dogAgeConverted.hidden = false
        dogAgeConverted.textColor = UIColor.redColor()
        enteredHumanYears.resignFirstResponder()

    }
        
        
}


