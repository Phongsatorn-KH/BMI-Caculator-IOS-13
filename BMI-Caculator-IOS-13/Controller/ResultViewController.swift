//
//  ResultViewController.swift
//  BMI-Caculator-IOS-13
//
//  Created by Phongsatorn Khummontree on 3/7/2563 BE.
//  Copyright © 2563 Phongsatorn Khummontree. All rights reserved.
//


import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice: String?
    var status: String?
    var color: UIColor?
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var recommentLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.text = status
        //statusLabel.textColor = color
        resultLabel.text = bmiValue
        recommentLabel.text = advice
        view.backgroundColor = color
        
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}

