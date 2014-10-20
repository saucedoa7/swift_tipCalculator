//
//  ViewController.swift
//  SwiftTipCalc
//
//  Created by Albert Saucedo on 10/19/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mealCostTextField: UITextField!
    @IBOutlet weak var tipPercentTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var mealTotalLabel: UILabel!


    var mealcost = ""
    var tipPercenatge = ""
    var tip : Float = 0.0
    var total : Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnCalculate(sender: UIButton) {
        calculateTip()
    }

    @IBAction func btnClear(sender: UIButton) {
        cleartextFields()
    }

    func cleartextFields () -> Bool{
        mealCostTextField.text = ""
        tipPercentTextField.text = ""

        tipAmountLabel.text = "Tip"
        mealTotalLabel.text = "Total"
        return true
    }

    func calculateTip () -> Bool{
        mealcost = mealCostTextField.text
        tipPercenatge = tipPercentTextField.text
        // convert string to float
        var fmealCost = (mealcost as NSString).floatValue
        var fTipPercentage = (tipPercenatge as NSString).floatValue

        tip = fmealCost * (fTipPercentage * 0.01)
        total = fmealCost + tip

        var tipFormat :NSString = NSString(format: "Tip: $%.2f", tip)
        var totalFormat :NSString = NSString(format: "Total $%.2f", total)

        tipAmountLabel.text = "\(tipFormat)"
        mealTotalLabel.text = "\(totalFormat)"

        return true
    }
}