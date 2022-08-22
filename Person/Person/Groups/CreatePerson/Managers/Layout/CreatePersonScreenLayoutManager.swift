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
        configure()
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension CreatePersonScreenLayoutManager {
    
    private func configure() {
        configureNavigationController()
    }
    
    private func configureNavigationController() {
        vc.title = "Создать пользователя"
    }
    
}
