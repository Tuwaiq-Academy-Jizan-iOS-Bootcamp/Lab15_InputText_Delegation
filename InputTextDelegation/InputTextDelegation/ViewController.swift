//
//  ViewController.swift
//  InputTextDelegation
//
//  Created by layla hakami on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var texetFaild1: UITextField!
    
    @IBOutlet weak var texetFalid2: UITextField!
 
    @IBOutlet weak var showInformation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func Display(_ sender: UIButton) {
        
        showInformation.text = "My Name is \(texetFaild1.text ?? "")\(texetFalid2.text ?? "")"
        texetFaild1.resignFirstResponder()
        texetFalid2.resignFirstResponder()
    }
}

extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        showInformation.text = texetFaild1.text
        showInformation.text = texetFalid2.text
        textField.resignFirstResponder()
        
        return true
    }
  
}
