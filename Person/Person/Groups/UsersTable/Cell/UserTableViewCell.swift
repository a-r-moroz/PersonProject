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
    
    // - Data
    private(set) var model: User?
    
    // - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        model = nil
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
        userNameLabel.text = nil
        if let userName = model?.name, let userSurname = model?.surname {
            userNameLabel.text = userName + " " + userSurname
        }
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension UserTableViewCell {
    
    private func configure() {
        configureSelectionStyle()
    }
    
    private func configureSelectionStyle() {
        self.selectionStyle = .none
    }
    
}
