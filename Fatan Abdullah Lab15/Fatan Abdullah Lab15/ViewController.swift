//
//  ViewController.swift
//  Fatan Abdullah Lab15
//
//  Created by Faten Abdullh salem on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextFild1: UITextField!
    
    @IBOutlet weak var TextFild2: UITextField!
    
    @IBAction func Display(_ sender:
                        Any) {
        results.text = "my name :  \(TextFild1.text!) \(TextFild2.text!)"
        
    }
    
    @IBOutlet weak var results: UILabel!
    
override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
    }
}

extension ViewController: UITextFieldDelegate{
    
func textFieldShouldReturn(_ textField: UITextField) -> Bool {

    TextFild1.resignFirstResponder()
    TextFild2.resignFirstResponder()

    return true
}
}
