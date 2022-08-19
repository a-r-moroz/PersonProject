//
//  User.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import RealmSwift

class User: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var phone: String = ""
    @objc dynamic var surname: String = ""
    @objc dynamic var city: String = ""

    convenience init(name: String, surname: String, phone: String, city: String) {
        self.init()
        self.name = name
        self.surname = surname
        self.phone = phone
        self.city = city
    }
}

//class User {
//@objc dynamic
//@Persisted
