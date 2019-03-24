//
//  NoteDetailViewController.swift
//  My Notebook
//
//  Created by Martin Løseth Jensen on 24/03/2019.
//  Copyright © 2019 Martin Løseth Jensen. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {

    @IBOutlet weak var noteTextField: UITextView!

    var text: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue" {
            text = noteTextField.text!
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
