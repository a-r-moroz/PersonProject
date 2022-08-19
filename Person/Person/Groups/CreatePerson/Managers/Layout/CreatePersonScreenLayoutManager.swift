//
//  CreatePersonScreenLayoutManager.swift
//  Person
//
//  Created by Andrew Moroz on 18.08.22.
//

import Foundation

class CreatePersonScreenLayoutManager: NSObject {
    
    // - VC
    private unowned let vc: CreatePersonViewController
    
    // - Init
    init(viewController: CreatePersonViewController) {
        self.vc = viewController
        super.init()
    }
    
}

// MARK: -
// MARK: - Update UI

extension CreatePersonScreenLayoutManager {

    func updateUI() {
        vc.title = "Создать пользователя"
    }

}
