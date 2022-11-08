//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by sarthak sharma on 21/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI.init(value: bmiValue, advice: "Eat more burgers", color: UIColor.systemBlue)
        }else if bmiValue < 24.5{
            bmi = BMI.init(value: bmiValue, advice: "Continue your diet", color: UIColor.systemGreen)
        }else{
            bmi = BMI.init(value: bmiValue, advice: "Move to a Healthy diet", color: UIColor.systemRed)
        }
        
        
        //bmi = BMI.init(value: <#T##Float#>, advice: <#T##String#>, color: <#T##UIColor#>)
        
    }
    
    
}
