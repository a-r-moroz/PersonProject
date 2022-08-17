//
//  User.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import RealmSwift

class User: Object {
    @Persisted var id: String = ""
    @Persisted var name: String = ""
    @Persisted var phone: String = ""
    @Persisted var surname: String = ""
    @Persisted var city: String = ""

    convenience init(id: String, name: String, surname: String, phone: String, city: String) {
        self.init()
        self.id = id
        self.name = name
        self.surname = surname
        self.phone = phone
        self.city = city
    }
}

//class User {
//@objc dynamic
