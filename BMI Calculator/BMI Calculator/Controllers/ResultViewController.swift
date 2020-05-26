//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dylan Kuster on 4/22/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    var bmi : String?
    var advice : String?
    var backgroundColor : UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resultLabel.text = bmi
        view.backgroundColor = backgroundColor
        adviceLabel.text = advice
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
}
