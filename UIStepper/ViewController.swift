//
//  ViewController.swift
//  UIStepper
//
//  Created by Mayur Mori on 14/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOUTLET -
    @IBOutlet weak var lblStepperValue: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    // MARK: - VIEW LIFE CYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    private func setupUI() {
        self.stepper.wraps = true
        self.stepper.autorepeat = true
        self.stepper.maximumValue = 10
    }
    
    // MARK: - IB ACTIONS -
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        self.lblStepperValue.text = Int(sender.value).description
    }
}
