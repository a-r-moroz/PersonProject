//
//  UIStoryboardExtension.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import UIKit

extension UIStoryboard {
    
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.filename, bundle: bundle)
    }
}
