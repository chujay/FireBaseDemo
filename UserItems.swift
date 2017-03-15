//
//  UserItems.swift
//  FirebaseTutorial
//
//  Created by Chujay on 3/15/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import Foundation
import Firebase

struct UserItems {
    let email: String
    let firstName: String
    let lastName: String
    let key: String
    let ref: FIRDatabaseReference?
    
    init(firstName: String, lastName: String,email: String,key: String = "" ) {
        self.firstName = firstName
        self.lastName = lastName
        self.ref = nil
        self.key = key
        self.email = email
    }
    
    init(snapshot: FIRDataSnapshot) {
        self.key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        self.firstName = snapshotValue["firstName"] as! String
        self.lastName = snapshotValue["lastName"] as! String
        self.email = snapshotValue["email"] as! String
        self.ref = snapshot.ref
    }
    func toAnyObject() -> Any {
        return [
            "firstName": self.firstName,
            "lastName": self.lastName,
            "email": self.email
        ]
    }
    
}

