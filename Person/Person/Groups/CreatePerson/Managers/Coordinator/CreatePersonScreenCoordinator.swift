//
//  CreatePersonScreenCoordinator.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

class CreatePersonScreenCoordinator {
    
    // - VC
    private unowned let vc: CreatePersonViewController
    
    // - Init
    init(viewController: CreatePersonViewController) {
        self.vc = viewController
    }
    
    func popViewController() {
        vc.navigationController?.popViewController(animated: true)
    }
    
}
