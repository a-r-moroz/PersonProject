//
//  AppDelegate.swift
//  Person
//
//  Created by Andrew Moroz on 16.08.22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    var window: UIWindow?
    weak var rootNavigationController: UINavigationController?
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}

// MARK: -
// MARK: - UIApplicationDelegate

extension AppDelegate: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configure()
        return true
    }
}

// MARK: -
// MARK: - Configure

fileprivate extension AppDelegate {
    
    private func configure() {
        configureWindow()
        configureRootViewController()
    }
    
    private func configureWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
    }
    
    private func configureRootViewController() {
        let usersVC = Storyboard.users.viewController as! UsersTableViewController
        let nc = UINavigationController(rootViewController: usersVC)
        self.window?.rootViewController = nc
        self.rootNavigationController = nc
        self.window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()
    }
    
}
