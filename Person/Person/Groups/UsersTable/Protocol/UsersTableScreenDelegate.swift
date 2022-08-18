//
//  UsersTableScreenDelegate.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

protocol UsersTableScreenDelegate: AnyObject {
//    var users: [User] { get }
    func didSelectOrderedItemCell(userModel: User)
}
