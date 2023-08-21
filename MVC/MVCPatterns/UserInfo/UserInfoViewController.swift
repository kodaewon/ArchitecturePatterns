//
//  UserInfoViewController.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/22.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    // MARK: - view properties
    private var userInfoView: UserInfoView { return view as! UserInfoView }
    
    // MARK: - properties
    private let userInfoModel = UserInfoModel()
    private var userInfo: UserInfo
    
    // MARK: - init
    init(userInfo: UserInfo) {
        self.userInfo = userInfo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - lifecycle
    override func loadView() {
        view = UserInfoView(userInfo: userInfo)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "UserInfo"
    }
}
