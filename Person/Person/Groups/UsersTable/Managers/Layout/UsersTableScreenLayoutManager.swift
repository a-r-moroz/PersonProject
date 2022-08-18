//
//  UsersTableScreenLayout.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

class UsersTableScreenLayoutManager: NSObject {
    
    // - VC
    private unowned let vc: UsersTableViewController
    
    // - Init
    init(viewController: UsersTableViewController) {
        self.vc = viewController
        super.init()
    }
    
}

// MARK: -
// MARK: - Update UI

extension UsersTableScreenLayoutManager {

    func updateUI() {
        vc.title = "Список пользователей"
        vc.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        vc.navigationController?.navigationBar.tintColor = AppColor.orangeColor
    }

}
