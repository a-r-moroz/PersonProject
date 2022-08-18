//
//  CreatePersonScreenDelegate.swift
//  Person
//
//  Created by Andrew Moroz on 18.08.22.
//

import Foundation

protocol CreatePersonScreenDelegate: AnyObject {
//    var users: [User] { get }
    func saveNewUser(newUser: User)
}
