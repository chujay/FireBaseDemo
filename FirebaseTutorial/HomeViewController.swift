//
//  HomeViewController.swift
//  FirebaseTutorial
//
//  Created by James Dacombe on 16/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logOutAction(sender: AnyObject) {
        if FIRAuth.auth()?.currentUser != nil {
            do {
                try FIRAuth.auth()?.signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    @IBAction func addArticle () {
        let storyboard = UIStoryboard.init(name: "Artical", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: CreateArticleViewController.identifier)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func editProfile() {
        let storyboard = UIStoryboard.init(name: "ProfileStoryboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: CreateProfileViewController.identifier)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func viewArticle() {
        print("View Article")
    }
}
