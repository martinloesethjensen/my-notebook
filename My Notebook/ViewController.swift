//
//  ViewController.swift
//  My Notebook
//
//  Created by Martin Løseth Jensen on 22/03/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var darkmodeLabel: UILabel!
    @IBOutlet weak var noteLabel: UILabel!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBAction func changeToDarkmode(_ sender: Any) {
        
        
        if view.backgroundColor == UIColor.darkGray{
            view.backgroundColor = UIColor.white
            textField.backgroundColor = UIColor.white
            textField.textColor = UIColor.black
            noteLabel.textColor = UIColor.black
            darkmodeLabel.textColor = UIColor.black
            saveButton.tintColor = UIColor.blue
        } else {
            view.backgroundColor = UIColor.darkGray
            textField.backgroundColor = UIColor.darkGray
            textField.textColor = UIColor.white
            noteLabel.textColor = UIColor.white
            darkmodeLabel.textColor = UIColor.white
            saveButton.tintColor = UIColor.orange
        }
        
    }
    
    @IBAction func saveNote(_ sender: Any) {
        // Setting
        
        let defaults = UserDefaults.standard
        defaults.set(textField.text, forKey: "note")
        
        print("\(textField.text!)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Getting the text
        let defaults = UserDefaults.standard
        if let stringOne = defaults.string(forKey: "note") {
            textField.text = stringOne
        }
        
        textField.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
}
