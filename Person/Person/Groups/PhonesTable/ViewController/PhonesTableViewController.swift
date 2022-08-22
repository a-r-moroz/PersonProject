//
//  PhonesTableViewController.swift
//  Person
//
//  Created by Andrew Moroz on 19.08.22.
//

import UIKit

class PhonesTableViewController: UIViewController {
    
    // - UI
    @IBOutlet weak var tableView: UITableView!
    
    // - DataSource
    private var dataSource: PhonesTableScreenDataSource!

    // - Managers
    private var coordinator: PhonesTableScreenCoordinator!
    
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
// MARK: - DB Request

fileprivate extension PhonesTableViewController {
    
    private func getUsers() {
        users = PersonRealmManager.read(type: User.self)
        dataSource.update(with: users)
    }
    
}

// MARK: -
// MARK: - Delegate
    
extension PhonesTableViewController: PhonesTableScreenDelegate {
    
    func showUserBySelectedPhone(user: User) {
        coordinator.showUserByPhoneScreen(user: user)
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension PhonesTableViewController {
    
    private func configure() {
        configureDataSource()
        configureCoordinator()
    }
    
    private func configureDataSource() {
        dataSource = PhonesTableScreenDataSource(tableView: tableView, delegate: self)
    }
    
    private func configureCoordinator() {
        coordinator = PhonesTableScreenCoordinator(viewController: self)
    }
    
}


