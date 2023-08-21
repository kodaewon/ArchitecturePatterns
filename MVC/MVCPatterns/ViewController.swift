//
//  ViewController.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/20.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func KDWDidTap() {
        
        let vc = LoginViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

