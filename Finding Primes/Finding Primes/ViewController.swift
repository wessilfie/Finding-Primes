//
//  ViewController.swift
//  Finding Primes
//
//  Created by William Essilfie on 8/25/15.
//  Copyright © 2015 Essilfie Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultField: UILabel!
    @IBOutlet var userInput: UITextField!
    
    @IBAction func checkButton(sender: AnyObject) {
        
        if let number = Int(userInput.text!) {
        var isPrime = true
        
        if number == 1 {
            isPrime = false
            
        }
        
        if number != 2 && number != 1 {
            for var i = 2; i < number; i++ {
                
                if number % i == 0 {
                    isPrime = false
                    
                }
            }
        }
        if isPrime {
            resultField.text = "\(number) is prime."
        } else {
            resultField.text = "\(number) is not prime."
        }

    }
        else {
            resultField.text = "Please enter a number."
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

