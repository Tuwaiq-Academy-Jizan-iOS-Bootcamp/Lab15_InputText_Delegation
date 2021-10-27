//
//  ViewController.swift
//  Doaaalageel_lab15
//
//  Created by Dua'a ageel on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fristName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var toDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fristName.delegate = self
        lastName.delegate = self
    }

    @IBAction func actionB(_ sender: UIButton) {
        toDisplay.text = "my name is: \(fristName.text!) \(lastName.text!)"
    }
}
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        fristName.resignFirstResponder()
        lastName.resignFirstResponder()
        return true
    }
}
