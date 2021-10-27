//
//  ViewController.swift
//  Lab15_InputText_Delegation- AHMAD
//
//  Created by Ahmad Barqi on 21/03/1443 AH.
//

import UIKit

 

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldone: UITextField!
    
    @IBOutlet weak var texFieldtwo: UITextField!
    

    @IBOutlet weak var outPuttext: UILabel!
    
   
    override func viewDidLoad() {

        super.viewDidLoad()
}
    
    @IBAction func restBoutton(_ sender: Any) {
        
        let FristName = textFieldone.text!
        let LastName = texFieldtwo.text!
        outPuttext.text = "My name is \(FristName) \(LastName)"
    }
    
    
        // Do any additional setup after loading extension ViewController:UITextFieldDelegate{
}
    extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {


        textFieldone.resignFirstResponder()
        texFieldtwo.resignFirstResponder()

        return true
    }

}

