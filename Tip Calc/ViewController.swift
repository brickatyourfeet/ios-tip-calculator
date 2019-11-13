//
//  ViewController.swift
//  Tip Calc
//
//  Created by Kyle Braden on 10/23/19.
//  Copyright © 2019 Kyle Braden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalBill: UITextField!
    @IBOutlet weak var tipPercentage: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTipPressed(_ sender: UIButton) {
        
        var billDouble = Double(totalBill.text!)!
        var tipPercentageDouble = Double(tipPercentage.text!)!
        
        var tipDouble = billDouble * (tipPercentageDouble / 100)
        
        tipAmount.text = "Tip: $\(tipDouble)"
    }
    
}

