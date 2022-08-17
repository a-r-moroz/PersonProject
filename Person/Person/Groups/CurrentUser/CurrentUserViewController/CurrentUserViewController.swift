//
//  CurrentUserViewController.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import Foundation
import UIKit
class CurrentUserViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var currentUser: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        configure()
    }
}
