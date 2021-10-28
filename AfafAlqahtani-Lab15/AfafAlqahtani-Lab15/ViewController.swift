//
//  ViewController.swift
//  AfafAlqahtani-Lab15
//
//  Created by Afaf Yahya on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate  {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var displayText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstName.delegate = self
        lastName.delegate = self
        
    }

    
    @IBAction func button(_ sender: Any) {
        displayText.text = "my name is : \(firstName.text!) \(lastName.text!)"
    }
        
         
        
    }
    extension ViewController: UITextViewDelegate {
            
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                      displayText.text = firstName.text
                      firstName.resignFirstResponder()
                       displayText.text = lastName.text
                       lastName.resignFirstResponder()
                        print("return button pressed !")
                            return true
            }
            

    }
    

