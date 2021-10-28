
//  ViewController.swift
//  AMAL JELI _LAB 15
//
//  Created by Amal Jeli on 21/03/1443 AH.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var TextField: UITextField!
    
   
    @IBOutlet weak var TextField2: UITextField!
    
    
    @IBOutlet weak var TextName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        TextField.delegate = self
        TextField2.delegate = self
    }
    @IBAction func Button(_ sender: Any) {
        
TextName.text = "My name is \(TextField.text!)"+" \(TextField2.text!)"
    }
    
    
    }
    extension ViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
TextField2.resignFirstResponder()
TextField2.resignFirstResponder()
            return true
        }
    }




