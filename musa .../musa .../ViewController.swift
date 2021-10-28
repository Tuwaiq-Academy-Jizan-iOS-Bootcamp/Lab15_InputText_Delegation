//
//  ViewController.swift
//  musa ...
//
//  Created by موسى مسملي on 27/10/2021.
//

import UIKit

 class ViewController: UIViewController {

     
     @IBOutlet weak var labelForDisplay: UILabel!
     
     @IBOutlet weak var firstnamefield:UITextField!
     
     @IBOutlet weak var lastnamefield: UITextField!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         firstnamefield.delegate = self
         lastnamefield.delegate = self
     }

     
     @IBAction func displayButton(_ sender: UIButton) {
        let fName = firstnamefield.text!
         let lName = lastnamefield.text!

         labelForDisplay.text =  " My Name is \(fName) \(lName) "

     }

 }

 extension ViewController:UITextFieldDelegate{
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {

         labelForDisplay.resignFirstResponder()
         return true
     }
 }
        
        
