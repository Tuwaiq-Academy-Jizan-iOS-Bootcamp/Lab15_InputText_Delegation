//
//  ViewController.swift
//  fristpageVC
//
//  Created by Abdulrhman Abuhyyh on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var fristName: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var reviw: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func displayName(_ sender: Any) {
        displayLabel.text = "My name is \(fristName.text!)" + "  \(lastName.text!) ... welcome ^_^ "
        
            
 }
func textFieldShouldRutrn(_ fristName: UITextField) -> Bool {
    
    fristName.text = displayLabel.text
    lastName.text = displayLabel.text
    
    displayLabel.resignFirstResponder()
    print("return button pressed")

return true
    
}
}
