//
//  ViewController.swift
//  tip
//
//  Created by Siva Adhitya G on 9/6/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        let bill = Double(BillField.text!) ?? 0
        let percentages = [0.15, 0.18, 0.2]

        
        let tip = bill * percentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        
        tipLabel.text = String.init(format: "$%.2f", tip)
        totalLabel.text = String.init(format: "%.2f", total)
        
    }
    
    @IBAction func onTAp(_ sender: Any) {
        view.endEditing(true)
    }
}

