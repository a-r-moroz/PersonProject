//
//  StoryboardEnum.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import class UIKit.UIViewController
import class UIKit.UIStoryboard

enum Storyboard: String {
    case users = "UsersTable"
    case createUser = "CreatePerson"
    case showSelectedUser = "CurrentUser"
    case phonesScreen = "PhonesTable"
}

extension Storyboard {
    
    var filename: String {
        return rawValue
    }
    
    var viewController: UIViewController {
        return UIStoryboard(storyboard: self).instantiateInitialViewController()!
    }
    
}
