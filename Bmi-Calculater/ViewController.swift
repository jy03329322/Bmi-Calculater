//
//  ViewController.swift
//  BMI Calculater
//
//  Created by Chao Zhang on 2/26/17.
//  Copyright © 2017 Chao Zhang. All rights reserved.
//

import UIKit
var BMI:Double = 0
var Height:Double = 0
var Weight:Double = 0
var Meter:Double = 0
var Kilogram:Double = 0



class ViewController: UIViewController{
    //MARK: Properties
    

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!

    @IBOutlet weak var metricLabel: UILabel!
  
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var displayImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text field's user input through delegate callbacks.
        
        
        displayImageView.image = UIImage(named: "sThin")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        //MARK: UITextFieldDelegate
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard
            
            textField.resignFirstResponder()
            
            return true
        }
        
        
    }
  // MARK: Action
   @IBAction func UISwith(_ sender: UISwitch)
    {

        
       if sender.isOn{
          Kilogram = Double(weightTextField.hashValue)
            Meter = Double(heightTextField.hashValue)
             BMI = Kilogram/Meter
            
        }else{
            Kilogram = Double(weightTextField.hashValue)/2.2046
            Meter = Double(heightTextField.hashValue)/3.28
            BMI = Kilogram/Meter        }
    }
    
    @IBAction func UIButton(_ sender: UIButton)
    {
        Kilogram = Double(weightTextField.text!)!
        Meter = Double(heightTextField.text!)!
        BMI = Kilogram/Meter
        switch BMI {
        case 0...15.99:
            displayLabel.text = "\(BMI)" + "Normal Range"
            displayImageView.image = UIImage(named: "sThin")
        case 16.00...100.00:
            displayLabel.text = "\(BMI)" + "Overweight"
            displayImageView.image = UIImage(named: "mThin")
        default:
            displayLabel.text = "Out of Date"
        }
    }

}

