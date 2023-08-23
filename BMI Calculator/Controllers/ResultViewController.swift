//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Rodrigo Gouveia on 22/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
	@IBOutlet weak var adviceLabel: UILabel!
	@IBOutlet weak var bmiLabel: UILabel!
	var bmiValue: String?
	var bmiAdvice: String?
	var bmiColor: UIColor?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		print(bmiValue!)
		
		self.view.backgroundColor = bmiColor
		bmiLabel.text = bmiValue
		adviceLabel.text = bmiAdvice
	}
    
	@IBAction func recalculatePressed(_ sender: UIButton) {
		self.dismiss(animated: true)
	}

}
