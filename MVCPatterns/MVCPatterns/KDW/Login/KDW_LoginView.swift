//
//  KDW_LoginView.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

import SnapKit

class KDW_LoginView: UIView {
    // MARK: - view properties
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .whileEditing
        textField.keyboardType = .emailAddress
        textField.returnKeyType = .next
        textField.placeholder = "email"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .whileEditing
        textField.returnKeyType = .done
        textField.placeholder = "password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let signButton: UIButton = {
        let button = UIButton()
        button.setTitle("SIGN", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.setTitleColor(.black, for: .selected)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - setup
extension KDW_LoginView {
    func setupViews() {
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(signButton)
        
        passwordTextField.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(32)
            make.right.equalToSuperview().offset(-32)
            make.height.equalTo(48)
            make.centerY.equalToSuperview()
        }
        
        emailTextField.snp.makeConstraints { (make) in
            make.left.equalTo(passwordTextField.snp.left)
            make.right.equalTo(passwordTextField.snp.right)
            make.height.equalTo(passwordTextField.snp.height)
            make.bottom.equalTo(passwordTextField.snp.top).offset(-16)
        }
        
        signButton.snp.makeConstraints { (make) in
            make.left.equalTo(passwordTextField.snp.left)
            make.right.equalTo(passwordTextField.snp.right)
            make.height.equalTo(passwordTextField.snp.height)
            make.top.equalTo(passwordTextField.snp.bottom).offset(16)
        }
    }
}
