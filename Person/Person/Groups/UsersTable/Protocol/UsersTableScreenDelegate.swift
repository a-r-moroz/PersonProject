//
//  UsersTableScreenDelegate.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import Foundation

protocol UsersTableScreenDelegate: AnyObject {
    func didSelectOrderedItemCell(userModel: User)
}
