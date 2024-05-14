//
//  LoginView.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import UIKit

class LoginView: UIView {
    private var contentView: UIView = {
        let cv = UIView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    private var helloLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: Typography.headingLarge.size, weight: .bold)
        l.text = "Olá"
        return l
    }()
    private var instructionsLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: Typography.paragraphLarge.size, weight: .medium)
        l.text = "Digite seu e-mail e senha para entrar"
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
        ])
        
        addSubview(helloLabel)
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            helloLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            helloLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        
        addSubview(instructionsLabel)
        NSLayoutConstraint.activate([
            instructionsLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: Spacing.s8.rawValue),
            instructionsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            instructionsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
}
