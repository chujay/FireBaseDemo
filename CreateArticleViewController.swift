//
//  ViewController.swift
//  FirebaseTutorial
//
//  Created by 伍智瑋 on 2017/3/14.
//  Copyright © 2017年 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class CreateArticleViewController: UIViewController {

    static let identifier = "CreateArticleViewController"

    var ref: FIRDatabaseReference!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        ref = FIRDatabase.database().reference(withPath: "User-item")
//        let user: User = User(email: <#T##String#>, firstName: <#T##String?#>, lastName: <#T##String?#>)
//        self.ref.setValue(["username": user1.name])
//        
//        self.ref.observe(FIRDataEventType.value, with: { snap in
//            print(snap.value)
//        })
//        
//        self.ref.updateChildValues(["username": "Hi"])
    }

    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createNewArticle() {
        print("Print new article")
    }
}
