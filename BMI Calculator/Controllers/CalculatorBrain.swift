//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rodrigo Gouveia on 23/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
	var bmi: BMI?
	
	mutating func calculateBMI(height: Float, weight: Float){
		let value = weight / pow(height, 2)
		
		if value < 18.5 {
			bmi = BMI(value: value, advice: "Eat more pie", color: UIColor.blue)
		} else if value < 24.9 {
			bmi = BMI(value: value, advice: "Fit as a fiddle!", color: UIColor.green)
		} else {
			bmi = BMI(value: value, advice: "Eat less pies!", color: UIColor.red)
		}
	}
	
	
	func getBMIValue() -> String{
		return String(format: "%.1f", bmi?.value ?? "0.0")
	}
	
	mutating func getColor() -> UIColor{
		return bmi?.color ?? UIColor.white
	}
		
	func getAdvice() -> String {
		return bmi?.advice ?? "No advice"
	}
}
