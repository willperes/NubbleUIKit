//
//  NATextView.swift
//  NubbleUIKit
//
//  Created by Willian Peres on 14/05/24.
//

import UIKit

class NATextView: UIView {
    private var label: String?
    private var placeholder: String
    
    private lazy var labelView: UILabel = {
        let l = UILabel()
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    private lazy var textView: UITextView = {
        let tv = UITextView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.font = .systemFont(ofSize: Typography.paragraphMedium.size, weight: .medium)
        tv.autocapitalizationType = .none
        tv.backgroundColor = .white
        
        tv.layer.borderWidth = 1
        tv.layer.borderColor = UIColor.secondarySystemFill.cgColor
        tv.layer.cornerRadius = CornerRadius.s12.rawValue
        tv.layer.masksToBounds = true
        
        return tv
    }()
    
    init(label: String?, placeholder: String) {
        self.label = label
        self.placeholder = placeholder
        
        super.init(frame: CGRect())
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupTextViewContentInset()
    }
    
    private func setup() {
        let hasLabel = label != nil
        if hasLabel {
            labelView.text = label
            addSubview(labelView)
            
            NSLayoutConstraint.activate([
                labelView.topAnchor.constraint(equalTo: topAnchor),
                labelView.leadingAnchor.constraint(equalTo: leadingAnchor),
                labelView.trailingAnchor.constraint(equalTo: trailingAnchor),
            ])
        }
        
        addSubview(textView)
        textView.delegate = self
        setupPlaceholder()
        
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            textView.heightAnchor.constraint(equalToConstant: 56)
        ])
        
        if hasLabel {
            NSLayoutConstraint.activate([
                textView.topAnchor.constraint(equalTo: labelView.bottomAnchor, constant: Spacing.s4.rawValue    ),
                textView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
    }
    
    private func setupTextViewContentInset() {
        let verticalInset = (textView.frame.size.height - textView.contentSize.height) / 2
        let horizontalInset = Spacing.s16.rawValue
        textView.contentInset = UIEdgeInsets(top: verticalInset, left: horizontalInset, bottom: 0, right: horizontalInset)
    }
    
    private func removePlaceholder() {
        textView.text = ""
        textView.textColor = UIColor.black
    }
    
    private func setupPlaceholder() {
        textView.text = placeholder
        textView.textColor = UIColor.lightGray
    }
}

extension NATextView: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == placeholder {
            removePlaceholder()
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            setupPlaceholder()
        }
    }
}
