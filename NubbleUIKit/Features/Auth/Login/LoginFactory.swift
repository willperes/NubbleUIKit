//
//  LoginFactory.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import UIKit

final class LoginFactory {
    static func buildRoot() -> UIViewController {
        let contentView = LoginView()
        let viewData = LoginViewData()
        let viewController = LoginViewController(contentView: contentView, viewData: viewData)
        return viewController
    }
}
