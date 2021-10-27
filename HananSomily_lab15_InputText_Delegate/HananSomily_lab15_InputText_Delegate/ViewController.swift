//
//  ViewController.swift
//  HananSomily_lab15_InputText_Delegate
//
//  Created by Hanan Somily on 27/10/2021.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var viewName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstName.delegate = self
        lastName.delegate = self
    }

    @IBAction func Display(_ sender: Any) {
        viewName.text = "My Name Is \(firstName.text!) \(lastName.text!)"
    }
    
}
extension ViewController:UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstName.resignFirstResponder()
        lastName.resignFirstResponder()
        return true
    }
}
