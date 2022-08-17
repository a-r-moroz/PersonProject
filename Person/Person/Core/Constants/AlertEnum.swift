//
//  AlertEnum.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import class UIKit.UIAlertController

enum Alert: String {

    case completed
    case emptyUser

    var controller: UIAlertController {
        return UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
    }
}

// MARK: -
// MARK: - Alert Title & Message

fileprivate extension Alert {

    private var alertTitle: String {
        switch self {
            case .completed:
                return "Пользователь успешно создан"
                
            case .emptyUser:
                return "Недостаточно данных"
        }
    }

    private var alertMessage: String {
        switch self {
            case .emptyUser:
                return "Все поля должны быть заполнены."
            default:
            return ""
        }
    }
}
