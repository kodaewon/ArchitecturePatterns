//
//  KDW_LoginViewController.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

class KDW_LoginViewController: UIViewController {
    
    // MARK: - view properties
    private var loginView: KDW_LoginView { view as! KDW_LoginView }
    
    private var emailTextField: UITextField { return loginView.emailTextField }
    private var passwordTextField: UITextField { return loginView.passwordTextField }
    private var signButton: UIButton { return loginView.signButton }
    
    // MARK: - properties
    private let loginModel: KDW_LoginModel = KDW_LoginModel()
    
    // MARK: - lifecycle
    
    override func loadView() {
        view = KDW_LoginView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Login"

        binds()
    }
    
    // MARK: - objc
    @objc func signDidTap(_ sender: UIButton) {
        guard loginModel.checkEmailValid(emailTextField.text!) else {
            UIAlertController.alert(parentVC: self, title: "", message: "이메일 형식이 다릅니다.")
            return
        }
        
        guard loginModel.checkPasswordValid(passwordTextField.text!) else {
            UIAlertController.alert(parentVC: self, title: "", message: "패스워드는 4글자 이상입니다.")
            return
        }
        
        let userInfo = KDW_UserInfo(email: emailTextField.text!, password: passwordTextField.text!)
        
        navigationController?.pushViewController(KDW_UserInfoViewController(userInfo: userInfo), animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension KDW_LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField === emailTextField {
            passwordTextField.becomeFirstResponder()
        }else {
            view.endEditing(true)
        }
        return true
    }
}

// MARK: - bind
extension KDW_LoginViewController {
    func binds() {
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        signButton.addTarget(self, action: #selector(signDidTap(_:)), for: .touchUpInside)
    }
}
