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
    private var models = PersonRealmManager.read(type: User.self)
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

extension UsersTableScreenDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTableViewCell", for: indexPath)
        (cell as? UserTableViewCell)?.set(model: models[indexPath.item], delegate)
        return cell
    }
    
}

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
    
    private enum Cell {
//        private enum Cell: String {
//        case personCell = "userTableViewCell"
        case personCell(user: User)
        var id: String {
            switch self {
                case .personCell:
                    return "userTableViewCell"
            }
        }
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension UsersTableScreenDataSource {
    
    private func configure() {
        registerCells()
        configureTableView()
        configureCells()
    }
    
    private func configureCells() {
        cells.removeAll()
        models.forEach { user in
            cells.append(.personCell(user: user))
        }
        tableView.reloadData()
    }

    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.delaysContentTouches = false
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: String(describing: UserTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: UserTableViewCell.self))
    }
    
}
