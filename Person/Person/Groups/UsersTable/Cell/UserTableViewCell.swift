//
//  UserTableViewCell.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    // - Delegate
    private weak var delegate: UsersTableScreenDelegate?
    
    // - UI
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    // - DataSource
//    private var dataSource: UsersTableViewCellDataSource!
    private var model: User?
    
    // - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        model = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK: -
// MARK: - Set

extension UserTableViewCell {

    func set(model: User, _ delegate: UsersTableScreenDelegate?) {
        self.model = model
        self.delegate = delegate
        setUserNameLabel()
    }

    private func setUserNameLabel() {
        if let userName = model?.name, let userSurname = model?.surname {
            userNameLabel.text = userName + " " + userSurname
        } else {
            userNameLabel.text = nil
        }
    }
}

// MARK: -
// MARK: - Configure

fileprivate extension UserTableViewCell {
    
    private func configure() {
        configureCell()
        configureDataSource()
    }
    
    private func configureCell() {
        self.selectionStyle = .none
    }
    
    private func configureDataSource() {
//        dataSource = UsersTableViewCellDataSource(collectionView: PersonTableViewCell)
    }
}

