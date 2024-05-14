//
//  LoginView.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 13/05/24.
//

import UIKit

class LoginView: UIScrollView {
    private var contentView: UIView = {
        let cv = UIView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    private var helloLabel: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        l.font = UIFont.systemFont(ofSize: Typography.headingLarge.size, weight: .bold)
        l.text = "Olá!"
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
        backgroundColor = .systemBackground
        
        addSubview(contentView)
        
        let padding = Spacing.s24.rawValue
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            contentView.widthAnchor.constraint(equalTo: widthAnchor, constant: -(padding * 2))
        ])
        
        addSubview(helloLabel)
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            helloLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            helloLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        
        addSubview(instructionsLabel)
        instructionsLabel.numberOfLines = 0
        NSLayoutConstraint.activate([
            instructionsLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: Spacing.s8.rawValue),
            instructionsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            instructionsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        let emailTextView = NATextView(label: "E-mail", placeholder: "Digite seu email")
        emailTextView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(emailTextView)
        NSLayoutConstraint.activate([
            emailTextView.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: Spacing.s40.rawValue),
            emailTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            emailTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        let passwordTextView = NATextView(label: "Senha", placeholder: "Digite sua senha")
        passwordTextView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(passwordTextView)
        NSLayoutConstraint.activate([
            passwordTextView.topAnchor.constraint(equalTo: emailTextView.bottomAnchor, constant: Spacing.s20.rawValue),
            passwordTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            passwordTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}
