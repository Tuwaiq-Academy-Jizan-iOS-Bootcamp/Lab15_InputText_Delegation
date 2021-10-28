//
//  ViewController.swift
//  AfafAlqahtani-Lab15
//
//  Created by Afaf Yahya on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var displayText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstName.delegate = self
        lastName.delegate = self
        
    }

    
    @IBAction func button(_ sender: Any) {
        displayText.text = "\(firstName.text!) \(lastName.text!)"
    }
        
         
        
    }
    extension ViewController: UITextFieldDelegate {
            
            func textFieldShouldReturn(_ textField: UITextField) -> Bool {
                      firstName.resignFirstResponder()
                       lastName.resignFirstResponder()
                     
                            return true
            }
            

    }
    

