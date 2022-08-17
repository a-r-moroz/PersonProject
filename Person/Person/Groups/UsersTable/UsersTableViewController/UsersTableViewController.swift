//
//  UsersTableViewController.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import UIKit

class UsersTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // - DataSource
    private var dataSource: UsersTableScreenDataSource!
    
    // - Managers
    private var coordinator: UsersTableScreenCoordinator!
    
    // - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        title = "Список пользователей"
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: nil, action: nil)
        self.navigationController?.navigationBar.tintColor = AppColor.orangeColor
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
    
    func didSelectOrderedItemCell(userModel: User) {
        coordinator.showSelectedUserScreen()
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
