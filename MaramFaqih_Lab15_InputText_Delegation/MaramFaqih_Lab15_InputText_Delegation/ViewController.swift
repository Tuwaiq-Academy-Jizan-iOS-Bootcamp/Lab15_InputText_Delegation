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
    
    @IBOutlet weak var star2: UILabel!
    @IBOutlet weak var star1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //firstNameField.text=nil
        //lastNameField.text=nil
        //labelForDisplay.text=nil
        //print(firstNameField.text)
    }

    @IBAction func displayButton(_ sender: UIButton) {
       let fName = firstNameField.text
        let lName = lastNameField.text 
        if ( fName == "" && lName == "" ){
            labelForDisplay.text =  "Please enter your first name and last name"
            star1.text =  "*"
            star2.text =  "*"
        }else if (fName == ""){
            labelForDisplay.text =  "Please enter your first name "
            star1.text =  "*"
            star2.text =  ""
        }else if (lName == ""){
            labelForDisplay.text =  "Please enter your last name "
            star1.text =  ""
            star2.text =  "*"
            
        }else{
                    
            labelForDisplay.text =  "My Name is \(fName!) \(lName!)"
        }
    
       
   
    
}
}
extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        firstNameField.resignFirstResponder()
        lastNameField.resignFirstResponder()
        return true
    }
}
