//
//  PhonesTableScreenDataSource.swift
//  Person
//
//  Created by Andrew Moroz on 19.08.22.
//

import UIKit

class PhonesTableScreenDataSource: NSObject {
    
    // - Delegate
    private weak var delegate: PhonesTableScreenDelegate?
    
    // - UI
    private unowned let tableView: UITableView
    
    // - Data
    private var models: [User] = []
    private var cells: [Cell] = []
    
    // - Init
    init(tableView: UITableView, delegate: PhonesTableScreenDelegate) {
        self.tableView = tableView
        self.delegate = delegate
        super.init()
        configure()
    }
    
}

// MARK: -
// MARK: - Update

extension PhonesTableScreenDataSource {
    
    func updateM(models: [User]) {
        self.models = models
        configureCells()
    }
    
}

// MARK: -
// MARK: - DataSource

extension PhonesTableScreenDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = cells[indexPath.item]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.id, for: indexPath)
        if case .phoneCell(let user) = cellModel {
            (cell as? PhoneTableViewCell)?.set(model: user, delegate)
        }
        return cell
    }
    
}

// MARK: -
// MARK: - UITableViewDelegate

extension PhonesTableScreenDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if let cell =  cell as? PhoneTableViewCell {
            if let userModel = cell.model {
                delegate?.showUserBySelectedPhone(user: userModel)
            }
        }
    }
    
}

// MARK: -
// MARK: - Cell

fileprivate extension PhonesTableScreenDataSource {
    
    private enum Cell {
        case phoneCell(user: User)
        var id: String {
            switch self {
            case .phoneCell:
                return "phoneTableViewCell"
            }
        }
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension PhonesTableScreenDataSource {
    
    private func configure() {
        configureTableView()
        configureCells()
    }
    
    private func configureCells() {
        cells.removeAll()
        models.forEach { user in
            cells.append(.phoneCell(user: user))
        }
        tableView.reloadData()
    }
    
    private func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}
