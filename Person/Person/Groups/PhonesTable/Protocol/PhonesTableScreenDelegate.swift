//
//  PhonesTableScreenDelegate.swift
//  Person
//
//  Created by Andrew Moroz on 19.08.22.
//

import Foundation

protocol PhonesTableScreenDelegate: AnyObject {
    func showUserBySelectedPhone(user: User)
}
