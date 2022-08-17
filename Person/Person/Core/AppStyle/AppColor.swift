//
//  AppColor.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

enum AppColor {
    
    // MARK: - Colors
    static let orangeColor = UIColor(named: "OrangeColor")!
    static let backgroundColor = UIColor(named: "BackgroundColor")!
    static let secondBackgroundColor = UIColor(named: "SecondBackgroundColor")!
    
    static func white(alpha: CGFloat = 1.0) -> UIColor {
        return self.color(fromHex: "ffffff", alpha: alpha)
    }
    
    static func black(alpha: CGFloat = 1.0) -> UIColor {
        return AppColor.color(fromHex: "000000", alpha: alpha)
    }
    
    // MARK: - Builders
    
    static func colorFromRGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
    
    static func colorFromRGBA(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    static func color(fromHex hex: String, alpha: CGFloat) -> UIColor {
        let cString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines as CharacterSet).uppercased()
        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }

}
