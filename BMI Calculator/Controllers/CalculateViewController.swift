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
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var WeightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
   
    @IBAction func heightSlideChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = ("\(height)m")
    }
    
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = ("\(weight)Kg")
    }
    
    
    @IBAction func calculatePress(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = WeightSlider.value
        let BMI = weight / pow(height, 2)
        print(String(format: "%.2f", BMI))
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", BMI)
        self.present(secondVC, animated: true, completion: nil)
    }
    
}

