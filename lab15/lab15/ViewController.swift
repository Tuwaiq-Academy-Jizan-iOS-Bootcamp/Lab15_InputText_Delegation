//
//  ViewController.swift
//  lab15
//
//  Created by grand ahmad on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITextViewDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    @IBAction func buttonAction(_ sender: Any) {
        lebelButton.text = "My name: \(myTextField.text!) \(myTextField2.text!)"
    }
    @IBOutlet weak var lebelButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.delegate = self
        myTextField2.delegate = self
    }
}
    extension ViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {

            myTextField.resignFirstResponder()
            myTextField2.resignFirstResponder()
            return true
        }
    }
