//
//  User1.swift
//  FirebaseTutorial
//
//  Created by Chujay on 3/15/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation



import Firebase

struct User1 {
    
    let uid: String
    let email: String
    
    init(authData: FIRUser ) {
        self.email = authData.email!
        self.uid = authData.uid
    }
    init(uid: String, email: String){
        self.uid = uid
        self.email = email
    }
}
