//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        //print(String(format: "%.2f", sender.value))
     let heightLableName = String(format: "%.2f", sender.value)
    
        heightLable.text = "\(heightLableName)" + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weightLableName = String(Int(sender.value))
        weightLable.text = "\(weightLableName)" + "kg"
    }
    @IBAction func calculaterPress(_ sender: UIButton) {
        let height = heightSlider.value
        let weight  = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        print(bmi)
        
    }
}

