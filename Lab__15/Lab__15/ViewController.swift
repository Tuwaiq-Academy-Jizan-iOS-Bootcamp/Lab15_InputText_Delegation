//
//  ViewController.swift
//  Lab__15
//
//  Created by Afrah Omar on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var display: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
               firstName.delegate = self
                lastName.delegate = self
    }
    @IBAction func display(_ sender: UIButton) {
        display.text = "my name is: \(firstName.text!) \(lastName.text!)"
     }
 }
 extension ViewController: UITextFieldDelegate{
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         firstName.resignFirstResponder()
         lastName.resignFirstResponder()
         return true
     }
 }
