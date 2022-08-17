//
//  UIViewControllerExtension.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

extension UIViewController {
    
    func hideKeyboardWhenTappedAround(cancelsTouchesInView: Bool = false) {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = cancelsTouchesInView
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
    }
    
}
