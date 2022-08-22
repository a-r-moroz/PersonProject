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
// MARK: - Update

extension UsersTableScreenDataSource {
    
    func update(models: [User]) {
        self.models = models
        configureCells()
    }
    
}

// MARK: -
// MARK: - DataSource

extension UsersTableScreenDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = cells[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.id, for: indexPath)
        if case .personCell(let user) = cellModel {
            (cell as? UserTableViewCell)?.set(model: user, delegate)
        }
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension UsersTableScreenDataSource: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath)
//        if let cell = cell as? UserTableViewCell, cell.cellType == "user" {
//                if let userModel = models[safe: indexPath.item] {
//                    delegate?.didSelectOrderedItemCell(userModel: userModel)
//                }
//            }
        
//            if let userModel = models[safe: indexPath.item] {
//                delegate?.didSelectOrderedItemCell(userModel: userModel)
//            }

        
//        if models.indices.contains(indexPath.item) {
//            delegate?.didSelectOrderedItemCell(userModel: models[safe: indexPath.item] ?? User(name: "", surname: "", phone: "", city: ""))
//        }
//    }
    
//    if let cell = tableView.cellForRow(at: indexPath) as? FeedbackTableViewCell {
//        switch cell.sectionType {
//            case .email:
//                delegate?.openRequestScreen()
//        }
//    } else if (tableView.cellForRow(at: indexPath) as? PhoneNumberTableViewCell) != nil {
//        delegate?.callNumber()
//    }
    
}

// MARK: -
// MARK: - Cell

fileprivate extension UsersTableScreenDataSource {
    
    private enum Cell {
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
    }
    
}
