//
//  Person.swift
//  Test Firebase
//
//  Created by Aaron on 3/27/19.
//  Copyright © 2019 Aaron. All rights reserved.
//

import Foundation

struct Person {
    var email: String
    var edad: Int
    
    init(email: String, edad: Int) {
        self.email = email
        self.edad = edad
    }
    
    func toAnyObject() -> Any {
        return [
            "email": email,
            "edad": edad
        ]
    }
}
