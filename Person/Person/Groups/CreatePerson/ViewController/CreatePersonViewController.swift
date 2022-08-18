//
//  CreatePersonViewController.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import UIKit

class CreatePersonViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var surnameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    
    // - DataSource
//    private var dataSource: MainScreenDataSource!
    
    // - Managers
    private var coordinator: CreatePersonScreenCoordinator!
    private var layout: CreatePersonScreenLayoutManager!
    private var delegate: UsersTableScreenDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
//        layout.updateUI()
//        fetchData()
    }
    
}

// MARK: -
// MARK: - Action

fileprivate extension CreatePersonViewController {
    
    @IBAction private func didTapSaveButton(_ sender: UIButton) {
        guard let name = nameField.text,
              let surname = surnameField.text,
              let phone = phoneField.text,
              let city = cityField.text else { return }
        let newUser = User(name: name, surname: surname, phone: phone, city: city)
        delegate.saveNewUser(newUser: newUser)
    }
    
    @IBAction private func didTapCancelButton(_ sender: UIButton) {
        coordinator.closeCreatingUserScreen()
    }
    
    @objc private func updateAfterLoginOrLogout() {
//        fetchData()
    }
    
}

fileprivate extension CreatePersonViewController {
    
    private func configure() {
        configureCoordinator()
    }
    
    private func configureCoordinator() {
        coordinator = CreatePersonScreenCoordinator(viewController: self)
    }
    
}
