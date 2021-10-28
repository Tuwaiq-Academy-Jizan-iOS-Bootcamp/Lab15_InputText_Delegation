//
//  ViewController.swift
//  Lap15
//
//  Created by زهور حسين on 22/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var fristName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       fristName.delegate = self
       lastName.delegate = self
        
    }
    @IBAction func action(_ sender: Any) {
        label.text = "my Name is \(fristName.text!)\(lastName.text!)"
        
        
    }
}



  
  
extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        fristName.resignFirstResponder()
        lastName.resignFirstResponder()
        return true
       

    }
}

