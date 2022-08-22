//
//  UsersTableScreenCoordinator.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

class UsersTableScreenCoordinator {
    
    // - VC
    private unowned let vc: UsersTableViewController
    
    // - Init
    init(viewController: UsersTableViewController) {
        self.vc = viewController
    }
    
    func popViewController() {
        vc.navigationController?.popViewController(animated: true)
    }
    
    func openCreatingUserScreen() {
        let creatingUserScreen = Storyboard.createUser.viewController
        vc.navigationController?.pushViewController(creatingUserScreen, animated: true)
    }
    
    func showSelectedUserScreen(user: User) {
        let currentUserScreen = Storyboard.showSelectedUser.viewController
        if let sheet = currentUserScreen.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
            sheet.prefersEdgeAttachedInCompactHeight = true
        }
        (currentUserScreen as? CurrentUserViewController)?.set(user: user)
        vc.present(currentUserScreen, animated: true)
    }
    
    func showPhonesScreen() {
        let phonesScreen = Storyboard.phonesScreen.viewController
        vc.navigationController?.pushViewController(phonesScreen, animated: true)
    }
    
}
