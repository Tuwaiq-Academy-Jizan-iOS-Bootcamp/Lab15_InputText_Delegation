//
//  ViewController.swift
//  EhabHakami_Lab15
//
//  Created by Ehab Hakami on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textTaaa1: UITextField!
    
    @IBOutlet weak var textqqq2: UITextField!
    
    @IBOutlet weak var labelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textTaaa1.delegate = self
        textqqq2.delegate = self
    

    }

    @IBAction func buttonAtionInLabel(_ sender: Any) {
        labelValue.text = "My name is :\(textTaaa1.text!)" + " \(textqqq2.text!)"
    }
}
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textTaaa1.resignFirstResponder()
        textqqq2.resignFirstResponder()
        
        print("retern button preessd ")
        return true
    }
    
}



