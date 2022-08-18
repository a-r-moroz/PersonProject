//
//  CurrentUserScreenCoordinator.swift
//  Person
//
//  Created by Andrew Moroz on 17.08.22.
//

import UIKit

class CurrentUserScreenCoordinator {
    
    // - VC
    private unowned let vc: CurrentUserViewController
    
    // - Init
    init(viewController: CurrentUserViewController) {
        self.vc = viewController
    }
    
//    func closeCreatingUserScreen() {
//        let currentUserScreen = Storyboard.showSelectedUser.viewController
////        vc.navigationController?.pushViewController(currentUserScreen, animated: true)
//        if let sheet = currentUserScreen.sheetPresentationController {
//            sheet.detents = [.medium(), .large()]
//            sheet.prefersGrabberVisible = true
//            sheet.prefersEdgeAttachedInCompactHeight = true
//        }
//        present(currentUserScreen, animated: true)
//    }

    
    /*
     let selectedAnswerVC = SingleQuestionViewController(nibName: String(describing: SingleQuestionViewController.self), bundle: nil)
     
     if let sheet = selectedAnswerVC.sheetPresentationController {
         sheet.detents = [.medium()]
         sheet.prefersGrabberVisible = true
         sheet.prefersEdgeAttachedInCompactHeight = true
         sheet.preferredCornerRadius = Const.CornerRadiusTo.sheetController
     }
     
     selectedAnswerVC.currentQuestion = questions[indexPath.row]
     present(selectedAnswerVC, animated: true)
     tableView.deselectRow(at: indexPath, animated: true)
     */
    
}
