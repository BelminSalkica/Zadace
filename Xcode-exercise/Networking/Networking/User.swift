//
//  User.swift
//  Networking
//
//  Created by Belmin Salkica on 10/3/16.
//  Copyright © 2016 WIP. All rights reserved.
//

import UIKit

class User: NSObject {
    var id: Int?
    var name: String?
    var username: String?
    var email: String?
    var address: Adress?
    var phone: String?
    var website: String?
    var company: Company?
    
    init(id: Int, name: String, username: String, email: String, address: Adress, phone: String, website: String, company: Company) {
        self.id = id
        self.name = name
        self.username = username
        self.email = email
        self.address = address
        self.phone = phone
        self.website = website
        self.company = company
    }
    override init() {
        super.init()
    }
}
