//
//  ViewController.swift
//  Yasir_lab15
//
//  Created by Yasir Hakami on 27/10/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fristNmae: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fristNmae.delegate = self
        lastName.delegate = self
        
        
    }
    
    
    @IBAction func press(_ sender: Any) {
        display.text = "My name is :\(fristNmae.text!)" + " \(lastName.text!) the Greatest IOS DEV. "
        
    }
    

}
extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        fristNmae.resignFirstResponder()
        lastName.resignFirstResponder()
        return true
    }
}
