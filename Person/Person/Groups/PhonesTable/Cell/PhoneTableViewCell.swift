//
//  PhoneTableViewCell.swift
//  Person
//
//  Created by Andrew Moroz on 19.08.22.
//

import UIKit

class PhoneTableViewCell: UITableViewCell {
    
    // - Delegate
    private weak var delegate: PhonesTableScreenDelegate?
    
    // - UI
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userPhoneLabel: UILabel!
    
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

extension PhoneTableViewCell {

    func set(model: User, _ delegate: PhonesTableScreenDelegate?) {
        self.model = model
        self.delegate = delegate
        setUserNamAndPhone()
    }

    private func setUserNamAndPhone() {
        userNameLabel.text = nil
        userPhoneLabel.text = nil
        if let userName = model?.name, let userSurname = model?.surname, let phone = model?.phone {
            userNameLabel.text = userName + " " + userSurname
            userPhoneLabel.text = phone
        }
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension PhoneTableViewCell {
    
    private func configure() {
        configureSelectionStyle()
    }
    
    private func configureSelectionStyle() {
        self.selectionStyle = .none
    }
    
}
