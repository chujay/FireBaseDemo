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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createNewArticle() {
        print("Print new article")
    }
}
