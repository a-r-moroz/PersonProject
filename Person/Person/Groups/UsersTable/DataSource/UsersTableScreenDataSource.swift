//
//  UsersTableScreenDataSource.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

final class UsersTableScreenDataSource: NSObject {
    
    // - Delegate
    private weak var delegate: UsersTableScreenDelegate?
    
    // - UI
    private unowned let tableView: UITableView
    
    // - Data
    private var models: [User] = []
    private var cells: [Cell] = []
    
    // - Init
    init(tableView: UITableView, delegate: UsersTableScreenDelegate) {
        self.tableView = tableView
        self.delegate = delegate
        super.init()
        configure()
    }
}

// MARK: -
// MARK: - DataSource

// swiftlint:disable line_length

extension UsersTableScreenDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTableViewCell", for: indexPath)
        (cell as? UserTableViewCell)?.set(model: models[indexPath.item], delegate)
        return cell
    }
}

// swiftlint:enable line_length

// MARK: -
// MARK: - UITableViewDelegate

extension UsersTableScreenDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if models.indices.contains(indexPath.item) {
            delegate?.didSelectOrderedItemCell(userModel: models[indexPath.item])
        }
    }
    
}

// MARK: -
// MARK: - Cell

fileprivate extension UsersTableScreenDataSource {
    
    private enum Cell: String {
        case personCell = "BankDetailsTextFieldCell"
        
        var id: String {
            switch self {
                case .personCell:
                    return "orderedItemCell"
            }
        }
    }
}

// MARK: -
// MARK: - Configure

fileprivate extension UsersTableScreenDataSource {
    
    private func configure() {
        configureTableView()
    }

    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.delaysContentTouches = false
//        tableView.contentInset = UIEdgeInsets(top: 16, left: 0, bottom: 16, right: 0)
    }
}
