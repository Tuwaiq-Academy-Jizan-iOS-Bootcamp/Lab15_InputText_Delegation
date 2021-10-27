//
//  ViewController.swift
//  MaramFaqih_Lab15_InputText_Delegation
//
//  Created by meme f on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelForDisplay: UILabel!
    
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayButton(_ sender: UIButton) {
       let fName = firstNameField.text!
        let lName = lastNameField.text!
        
        labelForDisplay.text =  "My Name is \(fName) \(lName)"
        
    }
       
   
    
}

extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        firstNameField.resignFirstResponder()
        lastNameField.resignFirstResponder()
        
        return true
    }
}
