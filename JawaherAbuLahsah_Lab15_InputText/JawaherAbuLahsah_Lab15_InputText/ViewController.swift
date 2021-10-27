//
//  ViewController.swift
//  JawaherAbuLahsah_Lab15_InputText
//
//  Created by Jawaher Mohammad on 21/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var secondFieldText: UITextField!
    @IBOutlet weak var firstFieldText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func displayButton(_ sender: UIButton) {
        displayLabel.text = "My Name : \(firstFieldText.text!) \(secondFieldText.text!) "
       
    }
    
    
}
extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    firstFieldText.resignFirstResponder()
    secondFieldText.resignFirstResponder()
        return true
    }
    
}
