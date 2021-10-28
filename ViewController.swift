//
//  ViewController.swift
//  nasser_ali_lab15
//
//  Created by Nasser Aseeri on 22/03/1443 AH.
//

import UIKit

class ViewController: UIViewController{
   
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var labl2: UILabel!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var labl: UILabel!
    var last : UITextField
    var frs :UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labl2.text = "Wilcom"
        firstName.delegate = self
        lastName.delegate = self
       
    }
 
    @IBAction func firsst(_ sender: Any) {
    }
    
    @IBOutlet weak var print: UILabel!

    @IBOutlet weak var display: UILabel!
    
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        (print != nil)
        
    }
}
