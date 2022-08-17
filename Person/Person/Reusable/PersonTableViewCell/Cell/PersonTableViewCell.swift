//
//  PersonTableViewCell.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    // - UI
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoto: UIImageView!
    
    // - DataSource
//    private var dataSource: UsersTableViewCellDataSource!
    private var user = User()
    
    // - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

// MARK: -
// MARK: - Configure

fileprivate extension PersonTableViewCell {
    
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
