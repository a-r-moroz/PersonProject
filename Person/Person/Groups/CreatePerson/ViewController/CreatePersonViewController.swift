//
//  CreatePersonViewController.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import UIKit

class CreatePersonViewController: UIViewController {
    
    // - DataSource
//    private var dataSource: MainScreenDataSource!
    
    // - Managers
    private var coordinator: CreatePersonScreenCoordinator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Создать пользователя"
        configure()
//        fetchData()
    }
}

// MARK: -
// MARK: - Action

fileprivate extension CreatePersonViewController {
    
    private func configure() {
        configureCoordinator()
    }
    
    private func configureCoordinator() {
        coordinator = CreatePersonScreenCoordinator(viewController: self)
    }
    
    @IBAction private func didTapSaveButton(_ sender: UIButton) {
        
    }
    
    @IBAction private func didTapCancelButton(_ sender: UIButton) {
        coordinator.closeCreatingUserScreen()
    }
    
    @objc private func updateAfterLoginOrLogout() {
//        fetchData()
    }
}
