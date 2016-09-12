//
//  ViewController.swift
//  TipCalculator_CodePath
//
//  Created by Narasimhan, Sindhuja on 9/9/16.
//  Copyright © 2016 Narasimhan, Sindhuja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var billText: UITextField!
    
    @IBOutlet weak var grandTotal: UILabel!
    @IBOutlet weak var splitText: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    @IBAction func calculateTip(sender: AnyObject) {
        let tipArray = [0.15,0.2,0.3]
        let billValue = Double(billText.text!) ?? 0
        let splitValue = Double(splitText.text!) ?? 0


        let tip = billValue * tipArray[tipPercent.selectedSegmentIndex]
        
        let grandTotalVal = billValue + (billValue * (tipArray[tipPercent.selectedSegmentIndex]))
        
        let total = (billValue/splitValue) + (tip/splitValue)
        tipValue.text = String(format: "$%.2f",tip)
        grandTotal.text = String(format:"$%.2f",grandTotalVal)
        totalValue.text = String(format:"$%.2f",total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billText.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

