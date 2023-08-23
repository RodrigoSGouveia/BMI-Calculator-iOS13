//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
	@IBOutlet weak var heightLabel: UILabel!
	@IBOutlet weak var weightLabel: UILabel!
	@IBOutlet weak var weightSlider: UISlider!
	@IBOutlet weak var heightSlider: UISlider!
	
	var calculatorBrain = CalculatorBrain()
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
	@IBAction func onHeightSlider(_ sender: UISlider) {
		let value = String(format: "%.2f", sender.value)
		heightLabel.text = "\(value)m"
		print(value)
		
	}
	
	@IBAction func onWeightSlider(_ sender: UISlider) {
		let value = Int(sender.value)
		weightLabel.text = "\(value)kg"
		print(value)
	}
	
	@IBAction func onCalculate(_ sender: UIButton) {
		calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
		performSegue(withIdentifier: "goToResults", sender: self)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "goToResults"{
			let destinationVC = segue.destination as! ResultViewController
			destinationVC.bmiValue = calculatorBrain.getBMIValue()
			destinationVC.bmiColor = calculatorBrain.getColor()
			destinationVC.bmiAdvice = calculatorBrain.getAdvice()
		}
	}
}

 

