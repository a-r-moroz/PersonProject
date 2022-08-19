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
    
    // - DataSource
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

extension PhoneTableViewCell {

    func set(model: User, _ delegate: PhonesTableScreenDelegate?) {
        self.model = model
        self.delegate = delegate
        setUserNamAndPhone()
    }

    private func setUserNamAndPhone() {
        if let userName = model?.name, let userSurname = model?.surname, let phone = model?.phone {
            userNameLabel.text = userName + " " + userSurname
            userPhoneLabel.text = phone
        } else {
            userNameLabel.text = nil
        }
    }
    
}

// MARK: -
// MARK: - Configure

fileprivate extension PhoneTableViewCell {
    
    private func configure() {
        configureCell()
    }
    
    private func configureCell() {
        self.selectionStyle = .none
    }
    
}
