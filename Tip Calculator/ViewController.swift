//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mariama Jaiteh on 9/4/18.
//  Copyright © 2018 Mariama Jaiteh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipController: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Set the label dynamically when user enters value.
        //Drag UI Label
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        // If whatever on the left returns a nill then return zero
        let tip = bill * tipPercentages[tipController.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
}

