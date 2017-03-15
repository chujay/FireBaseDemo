//
//  CreateProfileViewController.swift
//  FirebaseTutorial
//
//  Created by Chujay on 3/15/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class CreateProfileViewController: UIViewController {
    
    static let identifier = "CreateProfileViewController"
    let ref = FIRDatabase.database().reference(withPath: "Users")
    @IBOutlet weak var addProfile: UIButton!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var dismissButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func addProfile(_ sender: Any) {
        
        
        FIRAuth.auth()!.addStateDidChangeListener({ auth, user in
            guard let user = user else {return}
            let theUser = User1(authData: user)
            let userItem = UserItems(firstName: self.firstName.text!, lastName: self.lastName.text!, email: theUser.email)
            let currentUser = self.ref.child(theUser.uid)
            currentUser.setValue(userItem.toAnyObject())
            
        })
        
        
        
    }
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
