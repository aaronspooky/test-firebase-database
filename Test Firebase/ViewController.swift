//
//  ViewController.swift
//  Test Firebase
//
//  Created by Aaron on 3/27/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    var ref: DatabaseReference!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.ref = Database.database().reference(withPath: "person-list")
    }

    @IBAction func didTapSaveButton(_ sender: UIButton) {
        guard let name = nameTextField.text,
            let email = emailTextField.text,
            let age: Int = Int.init(ageTextField.text!) else {return}

        let person = Person(email: email, edad: age)
        let newPerson = self.ref.child(name.capitalized)
        newPerson.setValue(person.toAnyObject())
    }
    
}

