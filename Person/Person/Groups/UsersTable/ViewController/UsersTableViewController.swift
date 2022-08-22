//
//  UsersTableViewController.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import UIKit

class UsersTableViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    // - DataSource
    private var dataSource: UsersTableScreenDataSource!
    
    // - Managers
    private var coordinator: UsersTableScreenCoordinator!
    private var layout: UsersTableScreenLayoutManager!
    
    // - Data
    private var users: [User] = []
    
    // - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getUsers()
    }
    
}

// MARK: -
// MARK: - Action

fileprivate extension UsersTableViewController {
    
    @IBAction func createUser(_ sender: UIButton) {
        coordinator.openCreatingUserScreen()
    }
    
    @objc func showPhonesButton(sender: UIBarButtonItem) {
        coordinator.showPhonesScreen()
    }
    
}

// MARK: -
// MARK: - DB Request

fileprivate extension UsersTableViewController {
    
    private func getUsers() {
        users = PersonRealmManager.read(type: User.self)
        dataSource.update(models: users)
    }
    
}

// MARK: -
// MARK: - Delegate

extension UsersTableViewController: UsersTableScreenDelegate {
    
    func didSelectOrderedItemCell(userModel: User) {
        coordinator.showSelectedUserScreen(user: userModel)
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension UsersTableViewController {
    
    private func configure() {
        configureDataSource()
        configureCoordinator()
        configureLayoutManager()
        configureBarButtonItem()
    }
    
    private func configureDataSource() {
        dataSource = UsersTableScreenDataSource(tableView: tableView, delegate: self)
    }
    
    private func configureCoordinator() {
        coordinator = UsersTableScreenCoordinator(viewController: self)
    }
    
    private func configureLayoutManager() {
        layout = UsersTableScreenLayoutManager(viewController: self)
    }
    
    private func configureBarButtonItem() {
        let phonesButton = UIBarButtonItem(image: UIImage(systemName: "phone.fill"), style: .plain, target: self, action: #selector(showPhonesButton(sender:)))
        navigationItem.rightBarButtonItem = phonesButton
    }
    
}
