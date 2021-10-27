//
//  ViewController.swift
//  LabApp
//
//  Created by Ahlam Ahlam on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FistName: UITextField!

    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var Information: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        FistName.delegate = self
        LastName.delegate = self
    }

    @IBAction func DisplayButton(_ sender: Any) {
    Information.text = "Your Name is \(FistName.text!) \(LastName.text!)"
    }
    
}
extension ViewController: UITextFieldDelegate{
    
     func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        FistName.resignFirstResponder()
         LastName.resignFirstResponder()
         return true
     }
 }
