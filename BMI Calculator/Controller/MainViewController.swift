//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Fernando González on 14/08/21.
//

import UIKit

class MainViewController: UIViewController {
    
    /* Labels of the UI */
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    /* IBOutlet for the sliders */
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculationBrain = CalculatorBrain()
    
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
        let bmi: String = calculationBrain.getBmiAsString(height: heightSlider.value, weight: weightSlider.value)
        
        print("BMI: \(bmi)")
                
        /* Let is go to the Result View Controller using goToResult identifier Segue */
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    // This method be executed before to do a segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationViewController: ResultViewController = segue.destination as! ResultViewController
            destinationViewController.bmiValue = calculationBrain.getBMIValue()
            destinationViewController.bmiAdvice = calculationBrain.getBMIAdvice()
            destinationViewController.colour = calculationBrain.getBMIColour()
        }
    }
    
    /* IBAction for the weight Slider */
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight: String = String(format: "%.0f", sender.value)
        weightValueLabel.text = "\(weight)Kg"
    }
}

