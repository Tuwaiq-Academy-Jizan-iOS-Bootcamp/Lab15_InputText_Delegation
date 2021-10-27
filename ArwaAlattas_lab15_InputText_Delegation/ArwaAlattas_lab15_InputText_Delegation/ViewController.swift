//
//  ViewController.swift
//  ArwaAlattas_lab15_InputText_Delegation
//
//  Created by Arwa Alattas on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var desplaySowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField1.delegate = self
        textFiled2.delegate = self
    }
    @IBAction func displayButton(_ sender: UIButton) {
        
        desplaySowLabel.text = "My Name is \( textField1.text ?? "")\( textFiled2.text ?? "")"
        desplaySowLabel.becomeFirstResponder()
        textFiled2.resignFirstResponder()
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        desplaySowLabel.becomeFirstResponder()
        textFiled2.resignFirstResponder()
        return true
    }
    
    
}
