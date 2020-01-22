//
//  KDW_UserInfoViewController.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/22.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

class KDW_UserInfoViewController: UIViewController {
    
    // MARK: - view properties
    private var userInfoView: KDW_UserInfoView { return view as! KDW_UserInfoView }
    
    // MARK: - properties
    private let userInfoModel = KDW_UserInfoModel()
    private var userInfo: KDW_UserInfo
    
    // MARK: - init
    init(userInfo: KDW_UserInfo) {
        self.userInfo = userInfo
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - lifecycle
    override func loadView() {
        view = KDW_UserInfoView(userInfo: userInfo)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "UserInfo"
    }
}
