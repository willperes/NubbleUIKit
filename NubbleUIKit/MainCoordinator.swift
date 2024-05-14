//
//  MainCoordinator.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import UIKit

class MainCoordinator {
    private var navigationController: UINavigationController?
    
    public func start() -> UINavigationController? {
        // TODO: implement authentication flow.
        
        self.navigationController = UINavigationController(rootViewController: LoginFactory.buildRoot())
        return navigationController
    }
}
