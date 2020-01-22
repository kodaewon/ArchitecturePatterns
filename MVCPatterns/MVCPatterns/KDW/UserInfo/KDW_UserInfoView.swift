//
//  KDW_UserInfoView.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/22.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

import SnapKit

class KDW_UserInfoView: UIView {
    
    // MARK: - view properties
    let emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - properties
    private var userInfo: KDW_UserInfo
    
    // MARK: - init
    init(userInfo: KDW_UserInfo) {
        self.userInfo = userInfo
        super.init(frame: .zero)
        
        backgroundColor = .white
        
        initLayout()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - layout
    private func initLayout() {
        emailLabel.text = userInfo.email
        passwordLabel.text = userInfo.password
    }
}

// MARK: - setup
extension KDW_UserInfoView {
    func setupViews() {
        addSubview(emailLabel)
        addSubview(passwordLabel)
        
        emailLabel.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
        
        passwordLabel.snp.makeConstraints { (make) in
            make.top.equalTo(emailLabel.snp.bottom).offset(16)
            make.centerX.equalTo(emailLabel.snp.centerX)
        }
    }
}
