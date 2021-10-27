//
//  ViewController.swift
//  Yousef_Almalki_Lab15
//
//  Created by يوسف جابر المالكي on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var outPutTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
        }
    
    @IBAction func printButton(_ sender: UIButton) {
        
        let firstName = textField.text!
        let lastName = textField2.text!
        outPutTextField.text = "My name is \(firstName) \(lastName)"
    }

    }

extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      
       
        textField.resignFirstResponder()
        textField2.resignFirstResponder()

        return true
    }
    
}
