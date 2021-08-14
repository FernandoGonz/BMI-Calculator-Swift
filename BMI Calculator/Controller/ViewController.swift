//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Fernando González on 14/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    /* Labels of the UI */
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    /* IBOutlet for the sliders */
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let height: String = String(format: "%.2f", heightSlider.value)
        heightValueLabel.text = "\(height)m"
        
        let weight: String = String(format: "%.0f", weightSlider.value)
        weightValueLabel.text = "\(weight)Kg"
    }

    /* IBAction for the heighSlider */
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height: String = String(format: "%.2f", sender.value)
        heightValueLabel.text = "\(height)m"
    }
    
    /* IBAction for the Calculate Button */
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("The height is: \(heightSlider.value)")
        print("The weight is: \(weightSlider.value)")
        /* To calculate the BMI */
        let bmi: Float = Float(weightSlider.value) / Float(pow(heightSlider.value, 2))
        print("BMI: \(bmi)")
    }
    
    /* IBAction for the weight Slider */
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight: String = String(format: "%.0f", sender.value)
        weightValueLabel.text = "\(weight)Kg"
    }
}

