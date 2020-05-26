//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController
{
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider)
    {
        let sliderVal = String(format : "%.2f", heightSlider.value)
        heightLabel.text = "\(sliderVal)ft"
    }
    
    @IBAction func weightSliderChanged(_ sender: Any)
    {
        let sliderVal = String(format : "%.1f", weightSlider.value)
        weightLabel.text = "\(sliderVal)lb"
    }
    
    @IBAction func calculatePressed(_ sender: Any)
    {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmi = calculatorBrain.getBMI()
        destinationVC.advice = calculatorBrain.getAdvice()
        destinationVC.backgroundColor = calculatorBrain.getColor()
    }
}

