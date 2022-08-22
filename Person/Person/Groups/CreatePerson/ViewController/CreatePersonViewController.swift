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
    
    // - Managers
    private var coordinator: CreatePersonScreenCoordinator!
    private var layoutManager: CreatePersonScreenLayoutManager!
    
    // - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
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
        PersonRealmManager.add(object: newUser)
        coordinator.popViewController()
    }
    
    @IBAction private func didTapCancelButton(_ sender: UIButton) {
        coordinator.popViewController()
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension CreatePersonViewController {
    
    private func configure() {
        configureCoordinator()
        configureLayoutManager()
    }
    
    private func configureCoordinator() {
        coordinator = CreatePersonScreenCoordinator(viewController: self)
    }
    
    private func configureLayoutManager() {
        layoutManager = CreatePersonScreenLayoutManager(viewController: self)
    }
    
}
