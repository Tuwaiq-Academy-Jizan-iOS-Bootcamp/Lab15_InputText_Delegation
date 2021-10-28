//
//  ViewController.swift
//  Delegation
//
//  Created by Abdulrahman Gazwani on 22/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fname: UITextField!
    
    @IBOutlet weak var lName: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fname.delegate = self
            lName.delegate = self
    }

    @IBAction func display(_ sender: Any) {
        
        result.text = "my name is \(fname.text!) \(lName.text!)"
        fname.resignFirstResponder()
            lName.resignFirstResponder()
          }
        }
        extension ViewController: UITextFieldDelegate
        {
          func textFieldShouldReturn(_ textField: UITextField) -> Bool
          {
            return true
          }
        }






