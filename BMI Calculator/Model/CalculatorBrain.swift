//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fernando González on 17/08/21.
//

import UIKit

struct CalculatorBrain {
    
    private var height: Float?
    private var weight: Float?
    private var bmi: BMI?
    
    mutating func getBmiAsString(height: Float, weight: Float) -> String {
        
        /* Properties */
        self.height = height
        self.weight = weight
        
        /* Calculating the BMI value */
        let bmiValue = weight / pow(height, 2)
        
        /* Getting the colour in the BMI table */
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more cockies!", colour: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a worm!", colour: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else if bmiValue >= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Heart attack is comming!", colour: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        } else {
            print("Does not match")
        }
        
        
        /* Returning a String of the BMI value */
        return String(format: "%.1f", getBMIValue())
    }
    
    func getBMIValue() -> Float {
        return self.bmi?.value ?? 0.0
    }
    
    func getBMIColour() -> UIColor {
        return self.bmi?.colour ?? UIColor.clear
    }
    
    func getBMIAdvice() -> String {
        return self.bmi?.advice ?? ""
    }
    

    
    
}
