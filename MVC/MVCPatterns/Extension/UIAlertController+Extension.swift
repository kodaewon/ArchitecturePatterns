//
//  UIAlertController+Extension.swift
//  MVCPatterns
//
//  Created by 고대원 on 2020/01/22.
//  Copyright © 2020 고대원. All rights reserved.
//

import UIKit

extension UIAlertController {
    static func alert(parentVC: UIViewController, title: String? = nil, message: String? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        parentVC.present(alert, animated: true, completion: nil)
    }
}
