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
    
    // - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
//        layout.updateUI()
        title = "Список пользователей"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = AppColor.orangeColor
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        getUsers()
    }
    
}

// MARK: -
// MARK: - Action

fileprivate extension UsersTableViewController {

    @IBAction func createUser(_ sender: UIButton) {
        coordinator.openCreatingUserScreen()
    }
    
}

// MARK: -
// MARK: - Delegate
extension UsersTableViewController: UsersTableScreenDelegate {
    func saveNewUser(newUser: User) {
        PersonRealmManager.add(object: newUser)
    }
    
    func didSelectOrderedItemCell(userModel: User) {
        coordinator.showSelectedUserScreen(user: userModel)
    }
    
}

fileprivate extension UsersTableViewController {
    
    private func configure() {
        configureDataSource()
        configureCoordinator()
    }
    
    private func configureDataSource() {
        dataSource = UsersTableScreenDataSource(tableView: tableView, delegate: self)
    }
    
    private func configureCoordinator() {
        coordinator = UsersTableScreenCoordinator(viewController: self)
    }
    
}
