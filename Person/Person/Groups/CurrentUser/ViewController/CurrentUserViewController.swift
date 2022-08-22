//
//  CurrentUserViewController.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit
class CurrentUserViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var currentUser: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: -
// MARK: - Set

extension CurrentUserViewController {
    
    func set(user: User) {
        self.currentUser = user
    }

}
