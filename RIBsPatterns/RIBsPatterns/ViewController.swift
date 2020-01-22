//
//  ViewController.swift
//  RIBsPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

import SnapKit

class ViewController: UIViewController {
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        bindViews()
    }
    
    // MARK: - objc
    @objc func loginDidTap(_ sender: UIButton) {
        
    }
}

// MARK: - binds
extension ViewController {
    func bindViews() {
        loginButton.addTarget(self, action: #selector(loginDidTap(_:)), for: .touchUpInside)
    }
}

// MARK: - viewSetup
extension ViewController {
    func setupViews() {
        view.addSubview(loginButton)
    }
}

