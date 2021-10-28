//
//  ViewController.swift
//  HamadHarisi_Lab15_Login
//
//  Created by حمد الحريصي on 28/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fName: UITextField!
    
    @IBOutlet var lName: UITextField!
    
    @IBOutlet var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fName.delegate = self
        lName.delegate = self
    }


    
    
    
    
    
    @IBAction func display(_ sender: Any)
    {
        result.text = "my name is \(fName.text!) \(lName.text!)"
        fName.resignFirstResponder()
        lName.resignFirstResponder()
       // fName;,lName = result.text
     //   print("my name is \(fName) \(lName) ! ")
    }
    
    
    
}
extension ViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
      //  result.text = fName.text
     //   result.text = lName.text
//        fName.resignFirstResponder()
//        lName.resignFirstResponder()
        return true
    }
}
