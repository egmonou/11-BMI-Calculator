//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by administrator on 16/04/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    let colorCode = (underWeight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healty: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), overWeight: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies!", color: colorCode.underWeight)
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: colorCode.healty)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!", color: colorCode.overWeight)
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    }
    
    
    

}
