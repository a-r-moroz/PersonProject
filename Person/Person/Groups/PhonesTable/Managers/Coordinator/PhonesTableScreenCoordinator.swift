//
//  PhonesTableScreenCoordinator.swift
//  Person
//
//  Created by Andrew Moroz on 19.08.22.
//

import UIKit

class PhonesTableScreenCoordinator {
    
    // - VC
    private unowned let vc: PhonesTableViewController
    
    // - Init
    init(viewController: PhonesTableViewController) {
        self.vc = viewController
    }
    
    func showUserByPhoneScreen(user: User) {
        let currentUserScreen = Storyboard.showSelectedUser.viewController
        if let sheet = currentUserScreen.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
            sheet.prefersEdgeAttachedInCompactHeight = true
        }
        (currentUserScreen as? CurrentUserViewController)?.set(user: user)
        vc.present(currentUserScreen, animated: true)
    }

}
