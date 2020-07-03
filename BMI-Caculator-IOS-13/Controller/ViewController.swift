//
//  ViewController.swift
//  BMI-Caculator-IOS-13
//
//  Created by Phongsatorn Khummontree on 3/7/2563 BE.
//  Copyright © 2563 Phongsatorn Khummontree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculate = CalculateBrain()
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderBar(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderBar(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculate.calculateResultBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculate.getResult()
            destinationVC.advice = calculate.getAdvice()
            destinationVC.status = calculate.getStatus()
            destinationVC.color = calculate.getColor()
        }
    }
    

}
