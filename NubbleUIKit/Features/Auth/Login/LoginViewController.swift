//
//  LoginViewController.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import UIKit

class LoginViewController: UIViewController {
    private let contentView: LoginView
    var viewData: LoginViewDataProtocol
    
    init(contentView: LoginView, viewData: LoginViewDataProtocol) {
        self.contentView = contentView
        self.viewData = viewData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
        
        navigationController?.isNavigationBarHidden = true
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
