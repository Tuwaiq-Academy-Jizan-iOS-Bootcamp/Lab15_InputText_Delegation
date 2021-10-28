//
//  ViewController.swift
//  Bushra Barakat_Lab15
//
//  Created by Bushra Barakat on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField1.delegate = self
        textField2.delegate = self
        
    }
    @IBAction func button(_ sender: Any) {
        textLabel.text = "My Name is \(textField1.text!) \(textField2.text!)"
        
       
        
        
            
    }
    }
    
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        return true
    }
    
    
    func label2(){
        
    }
    
    
    
    }
    

