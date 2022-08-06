//
//  ViewController.swift
//  Tip-calculator
//
//  Created by Giang Tran on 8/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountTextField: UITextField!

    @IBOutlet weak var TipAmount: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalAmount: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmount.text = String(format: "$%.2f", tip)
        TotalAmount.text = String(format: "$%.2f", total)
    }
}

