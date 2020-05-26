//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dylan Kuster on 4/23/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain
{
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float)
    {
        let heightInches = height * 12
        
        let bmiValue = (weight / (heightInches * heightInches)) * 703
        
        if (bmiValue < 18.5)
        {
            bmi = BMI(value: bmiValue, advice: "Eat more snacks ‼️", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
            
        else if (bmiValue < 25)
        {
            bmi = BMI(value: bmiValue, advice: "You are healthy and fit 😊", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        
        else
        {
            bmi = BMI(value: bmiValue, advice: "Lose weight, fatass! 😺", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func getBMI() -> String
    {
        return String(format : "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String
    {
        return bmi?.advice ?? "Default advice"
    }
    
    func getColor() -> UIColor
    {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
