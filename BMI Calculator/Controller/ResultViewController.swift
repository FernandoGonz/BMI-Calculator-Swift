//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Fernando González on 14/08/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var descriptiveLabel: UILabel!
    
    // A Nil value for the bmi
    var bmiValue: Float?
    var bmiAdvice: String?
    var colour: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = String(format: "%.1f", bmiValue!)
        descriptiveLabel.text = bmiAdvice!
        view.backgroundColor = colour!
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    
    */

}
