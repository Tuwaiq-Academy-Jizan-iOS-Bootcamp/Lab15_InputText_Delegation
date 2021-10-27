//
//  ViewController.swift
//  NouraAlnami
//
//  Created by NoON .. on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var textName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        FirstName.delegate = self
        LastName.delegate = self
        
    }
    @IBAction func Display(_ sender: Any) {
        textName.text = "My Name is \( FirstName.text!)"+" \( LastName.text!)"
            }
}

extension ViewController: UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           FirstName.resignFirstResponder()
            LastName.resignFirstResponder()
            print("return button pressed !")
            return true
        }
    }
    
    



